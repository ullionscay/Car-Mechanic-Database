CREATE DATABASE car_service -- creates the database
use car_service;-- query to activate the database 

CREATE TABLE Mechanic(-- mechanic table created
mechanic_id VARCHAR(5) PRIMARY KEY,
mech_name VARCHAR (30) NOT NULL,
mech_phone VARCHAR (15),
grade VARCHAR (20)
);

CREATE TABLE Customer(  
customer_id VARCHAR(20) PRIMARY KEY,
cust_name VARCHAR(30) NOT NULL,
cust_email VARCHAR(50),
cust_phoneno VARCHAR(15)
);
-- customer table created

CREATE TABLE Car (
registration VARCHAR(20) PRIMARY KEY,
make VARCHAR(50),
model VARCHAR(50),
date_of_manufacture DATE,
customer_id VARCHAR(20),
mileage VARCHAR(50)
FOREIGN KEY (customer_id)
REFERENCES Customer(customer_id)
);

ALTER TABLE Car
ADD mileage VARCHAR (50) 
-- forgot to add milage so query to do that

CREATE TABLE Service (
    service_id VARCHAR(20) PRIMARY KEY,
    mechanic_id VARCHAR(5),
    registration VARCHAR(20), 
    dropoff_date DATE,
    dropoff_time TIME,
    work_required VARCHAR(255),
    next_service DATE,
    FOREIGN KEY (registration)       
        REFERENCES Car(registration),
    
);

-- Junction table to handle multiple mechanics per service
CREATE TABLE Service_Mechanic (
    service_id VARCHAR(20),
    mechanic_id VARCHAR(5),
    time_spent TIME,  
    PRIMARY KEY (service_id, mechanic_id),
    FOREIGN KEY (service_id)
        REFERENCES Service(service_id),
    FOREIGN KEY (mechanic_id)
        REFERENCES Mechanic(mechanic_id)
);

CREATE TABLE MechanicAvailability (
    availability_id INT IDENTITY(1,1) PRIMARY KEY,
    mechanic_id VARCHAR(5),
    unavailable_from DATE NOT NULL,
    unavailable_to DATE NOT NULL,
    reason VARCHAR(100),
    created_date DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id),
    CHECK (unavailable_from <= unavailable_to)
);
-- helpful for business processes
