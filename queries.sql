use car_service
--  Stored Procedure to add a new service 
CREATE PROCEDURE AddServiceSimple
    @service_id       VARCHAR(20),
    @registration     VARCHAR(20),
    @dropoff_date     DATE,
    @dropoff_time     TIME,
    @work_required    VARCHAR(255)
AS
BEGIN
    -- add the service (no mechanics)
    INSERT INTO Service (service_id, registration, dropoff_date, dropoff_time, work_required, next_service)
    VALUES (@service_id, @registration, @dropoff_date, @dropoff_time, @work_required);

    PRINT 'Service ' + @service_id + ' added.';
END;
GO

EXEC AddServiceSimple
    @service_id = 'B1025',
    @registration = 'DCZ 1844',
    @dropoff_date = '2025-10-15',
    @dropoff_time = '10:00',
    @work_required = 'oil change'

-- any mechanics who have worked on previous services of a car involved in a new service booking 
CREATE PROCEDURE GetAvailablePreviousMechanics
    @registration VARCHAR(20),
    @dropoff_date DATE,
    @new_service_id VARCHAR(20) = NULL  
AS
BEGIN
    WITH CarPreviousMechanics AS (
        -- Get all mechanics who worked on previous services for this car
        SELECT DISTINCT 
            Mechanic.mechanic_id,
            Mechanic.mech_name
        FROM Service 
        JOIN Service_Mechanic  ON Service.service_id = Service_Mechanic.service_id
        JOIN Mechanic  ON Service_Mechanic.mechanic_id = Mechanic.mechanic_id
        WHERE Service.registration = @registration
          AND (@new_service_id IS NULL OR Service.service_id <> @new_service_id)
    ),
    MechanicWorkload AS (
        -- Count how many jobs each mechanic is involved in on the specific date
        SELECT 
            Service_Mechanic.mechanic_id,
            COUNT(DISTINCT Service_Mechanic.service_id) as jobs_on_date
        FROM Service_Mechanic 
        JOIN Service  ON Service_Mechanic.service_id = Service.service_id
        WHERE Service.dropoff_date = @dropoff_date
        GROUP BY Service_Mechanic.mechanic_id
    )
    -- Final result: mechanics who worked on car before AND have 0 jobs on new date
    SELECT 
        cpm.mech_name,
        COALESCE(mw.jobs_on_date, 0) as current_jobs_count
    FROM CarPreviousMechanics cpm
    LEFT JOIN MechanicWorkload mw ON cpm.mechanic_id = mw.mechanic_id
    WHERE COALESCE(mw.jobs_on_date, 0) = 0
    ORDER BY cpm.mech_name;
END;
GO

EXEC GetAvailablePreviousMechanics 
    @registration = 'SEZ 5629',
    @dropoff_date = '2020-06-25';

    
    
    --List the total time spent servicing cars per mechanic over a 24hr period between two given dates

  SELECT 
    Mechanic.mech_name,
    CAST(
        SUM(
            DATEDIFF(MINUTE, '00:00:00', Service_Mechanic.time_spent)
        ) / 60.0 AS DECIMAL(10, 2)
    ) AS total_hours
FROM Mechanic
INNER JOIN Service_Mechanic 
    ON Mechanic.mechanic_id = Service_Mechanic.mechanic_id
INNER JOIN Service 
    ON Service_Mechanic.service_id = Service.service_id
WHERE 
    (
        (
            Service.dropoff_date = '2020-06-22'
            AND Service.dropoff_time >= '08:00:00' 
        )
        OR
        (
            Service.dropoff_date = '2020-06-23'
            AND Service.dropoff_time < '08:00:00' 
        )
    )
    AND Service_Mechanic.time_spent IS NOT NULL
GROUP BY 
    Mechanic.mechanic_id, 
    Mechanic.mech_name
ORDER BY 
    total_hours DESC;

    

    -- List customers with cars needing service between two dates
SELECT 
    Customer.cust_name,
    Customer.cust_email,
    Car.make,
    Car.registration,
    Service.next_service,
    Car.mileage
FROM Customer 
JOIN Car  ON Customer.customer_id = Car.customer_id
JOIN Service ON car.registration = Service.registration
WHERE Service.next_service BETWEEN '2021-06-20' AND '2021-06-25'
  AND Service.next_service IS NOT NULL
ORDER BY Service.next_service, Customer.cust_name;




-- Make mechanic unavaiable 

CREATE PROCEDURE MakeMechanicUnavailable
    @mechanic_id VARCHAR(5),
    @start_date DATE,
    @end_date DATE,
    @reason VARCHAR(100) 
AS
BEGIN
 
 INSERT INTO MechanicAvailability (mechanic_id, unavailable_from, unavailable_to, reason)
        VALUES (@mechanic_id, @start_date, @end_date, @reason)
END;

-- Example: Edgar F. Codd (E1037) is on vacation June 17-20, 2020
EXEC MakeMechanicUnavailable 
    @mechanic_id = 'E1037',
    @start_date = '2020-06-17',
    @end_date = '2020-06-20',
    @reason = 'Vacation';

-- procedure to check for conflicts
CREATE PROCEDURE CheckMechanicUnavailableConflicts
    @mechanic_id VARCHAR(5),   
    @check_date DATE           
AS
BEGIN
    SELECT 
        m.mech_name,
        ma.unavailable_from,
        ma.unavailable_to,
        ma.reason,
        s.service_id,
        s.registration,
        s.dropoff_date,
        s.work_required,
        c.cust_name,
        c.cust_phoneno AS customer_phone
    FROM Mechanic m
    JOIN MechanicAvailability ma ON m.mechanic_id = ma.mechanic_id
    LEFT JOIN Service_Mechanic sm ON m.mechanic_id = sm.mechanic_id
    LEFT JOIN Service s ON sm.service_id = s.service_id
    LEFT JOIN Car car ON s.registration = car.registration
    LEFT JOIN Customer c ON car.customer_id = c.customer_id
    WHERE (@mechanic_id IS NULL OR m.mechanic_id = @mechanic_id)
      AND (@check_date IS NULL OR 
           (@check_date BETWEEN ma.unavailable_from AND ma.unavailable_to))
      AND (s.dropoff_date IS NULL OR  -- Include mechanics with no services too
           s.dropoff_date BETWEEN ma.unavailable_from AND ma.unavailable_to)
      
    ORDER BY m.mech_name, s.dropoff_date;
END;
GO

-- Executable to check for the conflicts

EXEC CheckMechanicUnavailableConflicts @mechanic_id = 'E1037', @check_date = '2020-06-19';