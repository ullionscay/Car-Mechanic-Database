use car_service
INSERT INTO Customer (customer_id, cust_name, cust_email, cust_phoneno)
VALUES 
('D13-101', 'Bette Davis', 'bette.davis@ulster.ac.uk', '41728003'),
('D13-203', 'Cary Grant', 'bigcary@yahoo.com', '+44417654321'),
('D13-42', 'Humphrey Bogart', 'bogieh@gmail.com', '07782751839'),
('D13-R93', 'John Wayne', NULL, '02890112233'),
('D14-38', 'Katharine Hepburn', 'kath_hep29@hotmail.com', NULL),
('D17-022', 'Marilyn Monroe', 'marilyn@hotmail.com', '+88487618356732'),
('D17-080', 'Orson Welles', 'welles.orson@ulster.ac.uk', '08998736126'),
('R180-05', 'Vivien Leigh', 'viv.leigh38@gmail.com', '02890289675'),
('D13-51', 'Ingrid Bergman', 'IngridB@hotmail.com', '66419887654'),
('D13-306', 'William Holden', 'billyho66@yahoo.com', '+38198322843'),
('L231-12', 'Rita Hayworth', 'ritah99@outlook.com', '077709873980'),
('D13-R45', 'James Stewart', 'jimmy_stew@qub.ac.uk', '08770987654'),
('D14-025', 'James Dean', 'deenj@outlook.com', '+447780276405'),
('D14-16', 'Rock Hudson', 'rockyh@hotmail.com', NULL),
('D14-V17', 'Tony Curtis', 't.curtis@yahoo.com', NULL),
('L231-47', 'Elvis Presley', 'elvisp@yahoo.com', NULL),
('L231-05', 'Burt Lancaster', NULL, '+447781904569'),
('D17-945', 'Frank Sinatra', NULL, '08870286004'),
('D17-043', 'Deborah Kerr', NULL, '02890672593'),
('R180-61', 'Elizabeth Taylor', NULL, '+442891785397'),
('R180-32', 'Susan Hayward', 'susan.hayward@yahoo.com', NULL),
('D17-R14', 'Lana Turner', 'lana.turner@yahoo.com', NULL),
('L231-44', 'Omar Sharif', 'sharifo18@hotmail.com', '00447880708090'),
('D14-37', 'Natalie Wood', 'nattiewood@outlook.com', NULL),
('D14-V77', 'Doris Day', 'd.day67@hotmail.com', '+4478779297611'),
('D13-R71', 'Sean Connery', 'connery.sean007@outlook.com', NULL);
-- inserts data into 'customer' table

INSERT INTO Mechanic (mechanic_id, mech_name, mech_phone, grade)
VALUES 
('E9274', 'Tim Berners-Lee', '+442890469927', 'Trainee'),
('E1037', 'Edgar F. Codd', '07882751331', 'Mechanic'),
('E7291', 'Tony Hoare', '+44717689275', 'Apprentice'),
('E4470', 'Ada Lovelace', '07811304671', 'Mechanic'),
('E2045', 'Grace Hopper', '+447880496206', 'Apprentice'),
('E0392', 'Edsger Dijkstra', '07751839368', 'Senior Mechanic'),
('E2648', 'Alan Turing', '02890568482', 'Apprentice');
-- inserts data into 'Mechanic' table

INSERT INTO Car (registration, make, model, date_of_manufacture, customer_id, mileage)
VALUES 
('BJI 111', 'Vauxhall', 'Astra', '2016-07-02', 'D13-101', '45461'),
('AF56 WWJ', 'Volkswagen', 'Golf', '2014-05-25', 'D13-203', '75712'),
('LV59 OTP', 'Volkswagen', 'Polo', '2015-06-30', 'D13-42', '49904'),
('SEZ 5629', 'Skoda', 'Superb', '2009-11-26', 'D13-R93', '135312'),
('MEZ 8086', 'Subaru', 'Impreza', '2017-10-15', 'D14-38', '31446'),
('GRZ 6511', 'Subaru', 'Outback', '2018-04-01', 'D17-022', '21043'),
('DCZ 1844', 'Nissan', 'Qashqai Visia', '2008-03-13', 'D17-080', '142958'),
('VIM 8955', 'Skoda', 'Superb', '2016-10-14', 'R180-05', '25077'),
('OEZ 1872', 'Alfa Romeo', 'Alfasud', '2014-09-22', 'D13-101', '85602'),
('D268 YCF', 'Audi', 'A8 TFSI e', '2020-02-07', 'D13-51', '9362'),
('CJ16 WED', 'Vauxhall', 'Corsa-e', '2020-01-27', 'D13-306', '5903'),
('W85 TTF', 'Nissan', 'Micra', '2017-12-12', 'D17-022', '34943'),
('LLZ 9362', 'Volkswagen', 'Golf', '2018-08-30', 'D13-306', '15033'),
('WVG 673', 'Volvo', 'V90', '2019-12-13', 'D17-080', '7034'),
('R99 YRK', 'BMW', '6 Series Gran Coupe', '2019-11-04', 'L231-12', '4766'),
('T779 OLI', 'Ford', 'Fiesta 1.25 Zetec', '2016-03-16', 'D13-R45', '21641'),
('BEZ 8826', 'Toyota', 'Corolla', '2015-05-26', 'D13-51', '94006'),
('G5 T77', 'Dacia', 'Duster', '2017-09-19', 'D13-306', '42743'),
('STR 9378', 'Skoda', NULL, NULL, 'D14-025', '63092'),
('F6 Y886', 'Skoda', 'Superb', '2018-12-14', 'D14-16', '18932'),
('YR3 67', 'Vauxhall', 'Corsa-e', '2019-06-27', 'D14-V17', '11037'),
('DYR 87', 'Toyota', 'Corolla', '2016-03-26', 'L231-47', '48841'),
('SWT 9930', 'Dacia', 'Duster', '2018-02-15', 'L231-05', '20026'),
('D89 Y6', 'Alfa Romeo', 'Alfasud', '2016-09-02', 'D17-945', '31604'),
('Y4 T87', 'Subaru', 'Impreza', '2017-11-05', 'D17-043', '36480'),
('JEZ 7719', 'Dacia', NULL, NULL, 'R180-61', '84629'),
('MEW 783', 'Ford', 'Focus', '2017-09-19', 'R180-32', '22030'),
('JEA 991', 'Volvo', 'V70', '2018-10-13', 'D17-R14', '11729'),
('B56 Y34', 'Vauxhall', 'Astra', '2017-07-22', 'L231-44', '51815'),
('FET 6821', 'Nissan', 'Qashqai Visia', '2018-09-13', 'D14-37', '18037'),
('B82 T56', 'Skoda', 'Superb', '2017-10-19', 'D14-V77', '37104'),
('CEZ 563', 'Volkswagen', 'Golf', NULL, 'D13-R71', '71402');
-- inserts data into 'Car' table

INSERT INTO Service (service_id, registration, dropoff_date, dropoff_time, work_required, next_service)
VALUES 
('S2006-101', 'BJI 111', '2020-06-17', '08:30:00', 'MOT check-up', '2021-06-21'),
('S2006-102', 'AF56 WWJ', '2020-06-17', '14:30:00', 'MOT check-up', '2021-06-20'),
('S2006-103', 'LV59 OTP', '2020-06-17', '08:00:00', 'Other - Wheel bearing - front passengers side', '2021-06-18'),
('S2006-104', 'SEZ 5629', '2020-06-17', '07:30:00', 'Other - Not going into third gear. All other gears are okay.', '2021-06-21'),
('S2006-105', 'MEZ 8086', '2020-06-17', '08:15:00', 'Annual service', '2021-06-19'),
('S2006-106', 'GRZ 6511', '2020-06-18', '16:30:00', 'Other - Rattle in the front suspension', '2021-06-21'),
('S2006-107', 'DCZ 1844', '2020-06-18', '08:30:00', 'MOT check-up', '2021-06-18'),
('S2006-108', 'VIM 8955', '2020-06-18', '08:00:00', 'MOT check-up', '2021-06-19'),
('S2006-109', 'OEZ 1872', '2020-06-19', '08:30:00', 'Other - Oil leak - looks major', '2021-06-21'),
('S2006-110', 'D268 YCF', '2020-06-19', '08:45:00', 'Other - Loses power going up hills. Can not go over 50 mph', '2021-06-21'),
('S2006-111', 'CJ16 WED', '2020-06-19', '08:30:00', 'Other - Air conditioning not working', '2021-06-19'),
('S2006-112', 'W85 TTF', '2020-06-19', '08:30:00', 'Other - Grinding noise from the brakes and whirring noise from the front.', '2021-06-23'),
('S2006-113', 'LLZ 9362', '2020-06-19', '08:30:00', 'Annual service', '2021-06-21'),
('S2006-114', 'WVG 673', '2020-06-20', '16:45:00', 'Other - high pitched whistling noise coming from the front.', '2021-06-21'),
('S2006-115', 'R99 YRK', '2020-06-20', '08:30:00', 'Other - Filled with diesel - should have been petrol! Will need collected.', NULL),
('S2006-116', 'T779 OLI', '2020-06-20', '12:30:00', 'MOT check-up', '2021-06-22'),
('S2006-117', 'BEZ 8826', '2020-06-20', '08:15:00', 'Other - Front tyres are wearing away on the inside. Wire is showing.', '2021-06-20'),
('S2006-118', 'G5 T77', '2020-06-22', '08:30:00', 'Annual service', '2021-06-24'),
('S2006-119', 'SEZ 5629', '2020-06-22', '08:30:00', 'Other - Same problem as before - worked for a while, but now not going into first or third gear.', '2021-06-21'),
('S2006-120', 'STR 9378', '2020-06-22', '10:30:00', 'MOT check-up', '2021-06-22'),
('S2006-121', 'F6 Y886', '2020-06-23', '08:30:00', 'Annual service', '2021-06-25'),
('S2006-122', 'YR3 67', '2020-06-23', '09:00:00', 'Annual service', '2021-06-25'),
('S2006-123', 'DYR 87', '2020-06-23', '16:15:00', 'MOT check-up', '2021-06-23'),
('S2006-124', 'SWT 9930', '2020-06-23', '08:30:00', 'Annual service', '2021-06-24'),
('S2006-125', 'D89 Y6', '2020-06-24', '12:15:00', 'MOT check-up', NULL),
('S2006-126', 'Y4 T87', '2020-06-24', '08:15:00', 'Other - front suspension has collapsed.', NULL),
('S2006-127', 'JEZ 7719', '2020-06-24', '08:30:00', 'MOT check-up', '2021-06-24'),
('S2006-128', 'MEW 783', '2020-06-24', '08:00:00', 'Other - Power steering not working. Very hard to turn the steering wheel.', '2020-12-09'),
('S2006-129', 'JEA 991', '2020-06-24', '14:30:00', 'Annual service', '2020-06-25'),
('S2006-130', 'B56 Y34', '2020-06-24', '08:00:00', 'Annual service', '2020-06-13'),
('S2006-131', 'FET 6821', '2020-06-25', '07:45:00', 'Annual service', '2020-06-30'),
('S2006-132', 'B82 T56', '2020-06-25', '08:15:00', 'Other - none of the lights are working', NULL),
('S2006-133', 'CEZ 563', '2020-06-25', '16:30:00', 'MOT check-up', '2021-06-25'),
('S2006-134', 'AF56 WWJ', '2020-06-25', '08:30:00', 'Other - Car not starting', '2021-06-20'),
('S2006-135', 'SEZ 5629', '2020-06-25', '14:30:00', 'Other - Now there are grinding sounds from gearbox!!!', '2021-06-21');
-- inserts data into 'Service' table

INSERT INTO Service_Mechanic (service_id, mechanic_id, time_spent)
VALUES 
-- S2006-101
('S2006-101', 'E9274', '03:15:00'),
('S2006-101', 'E1037', '00:45:00'),
-- S2006-102
('S2006-102', 'E7291', '04:00:00'),
('S2006-102', 'E4470', '00:30:00'),
-- S2006-103
('S2006-103', 'E2045', '03:30:00'),
('S2006-103', 'E1037', '06:20:00'),
('S2006-103', 'E0392', '01:10:00'),
-- S2006-104
('S2006-104', 'E9274', '02:25:00'),
('S2006-104', 'E4470', '09:25:00'),
('S2006-104', 'E1037', '05:15:00'),
-- S2006-105
('S2006-105', 'E2045', '04:20:00'),
('S2006-105', 'E0392', '01:00:00'),
-- S2006-106
('S2006-106', 'E9274', '05:20:00'),
('S2006-106', 'E1037', '03:15:00'),
-- S2006-107
('S2006-107', 'E9274', '01:15:00'),
('S2006-107', 'E1037', '04:35:00'),
-- S2006-108
('S2006-108', 'E2648', '03:35:00'),
('S2006-108', 'E4470', '03:35:00'),
-- S2006-109
('S2006-109', 'E7291', '04:25:00'),
('S2006-109', 'E0392', '06:20:00'),
('S2006-109', 'E1037', '01:15:00'),
-- S2006-110
('S2006-110', 'E2648', '02:15:00'),
('S2006-110', 'E0392', '10:15:00'),
('S2006-110', 'E1037', '10:15:00'),
-- S2006-111
('S2006-111', 'E2045', '05:00:00'),
-- S2006-112
('S2006-112', 'E2045', '01:45:00'),
('S2006-112', 'E4470', '08:05:00'),
('S2006-112', 'E0392', '06:35:00'),
-- S2006-113
('S2006-113', 'E7291', '03:30:00'),
('S2006-113', 'E4470', '03:55:00'),
-- S2006-114
('S2006-114', 'E7291', '03:15:00'),
('S2006-114', 'E4470', '03:20:00'),
('S2006-114', 'E1037', '02:15:00'),
-- S2006-115
('S2006-115', 'E9274', '05:35:00'),
('S2006-115', 'E1037', '05:35:00'),
-- S2006-116
('S2006-116', 'E2045', '03:45:00'),
('S2006-116', 'E1037', '04:15:00'),
-- S2006-117
('S2006-117', 'E7291', '01:15:00'),
('S2006-117', 'E4470', '02:35:00'),
-- S2006-118
('S2006-118', 'E9274', '03:20:00'),
('S2006-118', 'E0392', '00:50:00'),
-- S2006-119
('S2006-119', 'E9274', '02:35:00'),
('S2006-119', 'E1037', '04:40:00'),
-- S2006-120
('S2006-120', 'E2648', '03:30:00'),
('S2006-120', 'E4470', '02:50:00'),
-- S2006-121 (no time_spent in data)
('S2006-121', 'E2045', NULL),
-- S2006-122
('S2006-122', 'E7291', NULL),
-- S2006-123
('S2006-123', 'E2648', NULL),
-- S2006-124
('S2006-124', 'E9274', NULL),
-- S2006-125
('S2006-125', 'E2648', NULL),
-- S2006-126 (no mechanic assigned)
-- S2006-127
('S2006-127', 'E7291', NULL),
-- S2006-128 (no mechanic assigned)
-- S2006-129
('S2006-129', 'E2045', NULL),
-- S2006-130
('S2006-130', 'E9274', NULL),
-- S2006-131
('S2006-131', 'E2648', NULL),
-- S2006-132 (no mechanic assigned)
-- S2006-133
('S2006-133', 'E7291', NULL);
-- Note: Services with no employee_id (like S2006-126, S2006-128, etc.) have no entries in this table

