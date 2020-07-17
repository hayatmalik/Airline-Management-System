DROP DATABASE IF EXISTS AirlineManagementSystem;
CREATE DATABASE AirlineManagementSystem;

USE AirlineManagementSystem;

CREATE TABLE Passenger ( PassengerID int unsigned NOT NULL auto_increment, Name varchar(255), CNIC char(13), Phone char(11), Nationality varchar(255), PRIMARY KEY (PassengerID) );

CREATE TABLE flights ( flightID int unsigned NOT NULL auto_increment, Departure_from char(3), Departure_Date Date, Departure_time varchar(10), Arrival_at char(3), Arrival_Date Date, Arrival_time varchar(10), fare int, PRIMARY KEY(flightID) );

CREATE TABLE TicketRecord ( Record_No int unsigned NOT NULL auto_increment, PassengerID int unsigned NOT NULL, flightID int unsigned NOT NULL, PRIMARY KEY (Record_No), FOREIGN KEY (PassengerID) REFERENCES Passenger (PassengerID), FOREIGN KEY (flightID) REFERENCES flights (flightID) );

INSERT INTO Passenger (PassengerID, Name, CNIC, Phone, Nationality) Values (1, 'Roger McAllen', '3510118657920', '03004567893', 'American'), (2, 'Trevor Anderson', '3520118557390', '03234507853', 'Australian'), (3, 'Nathan Scott', '3510123945069', '03006666863', 'American'), (4, 'Jeff Mathews', '3510638757370', '03219079456', 'Canadian'), (5, 'Sana Fayyaz', '3510119090740', '03234900893', 'Pakistani'), (6, 'Yasmine', '3230356781233', '03009034562', 'Pakistani'), (7, 'Aiman Malik', '3520319667420', '03005454547', 'Pakistani'), (8, 'Taha Asim', '359098762341', '03234156733', 'Pakistani'), (9, 'Seemal Butt', '3520133457623', '03444568903', 'Indian'), (10, 'Komal Shahid', '3520210191544', '03224123893', 'Pakistani'), (11, 'Usman Malik', '3520213153220', '03044909893', 'Pakistani'), (12, 'Ali Ijaz', '3590923452328', '03477087125', 'Pakistani'), (13, 'Mohammad Abid', '3520213452318', '02319944197', 'Indian');

INSERT INTO flights (Departure_from, Departure_Date, Departure_time, Arrival_at, Arrival_Date, Arrival_time, fare)
VALUES ('KHI', '2019-10-31', '01:00', 'LHE', '2019-10-31', '03:00', 15000), 
('KHI', '2019-10-31', '08:00', 'LHE', '2019-10-31', '11:00', 18000), 
('LHE', '2019-10-31', '12:00', 'DXB', '2019-10-31', '20:00', 60000),
('DXB', '2019-10-30', '10:00', 'KHI', '2019-10-31', '19:00', 55000),
('LHE', '2019-10-31', '05:00', 'KHI', '2019-10-31', '08:00', 16000),
('LHE', '2019-10-31', '01:00', 'KHI', '2019-10-31', '03:00', 15000),
('KHI', '2019-10-31', '16:00', 'LHE', '2019-10-31', '19:00', 19000),
('ISB', '2019-10-31', '01:00', 'LHE', '2019-10-31', '02:00', 10000),
('ISB', '2019-10-31', '18:00', 'LHE', '2019-10-31', '19:00', 12000), 
('ISB', '2019-10-30', '02:00', 'KHI', '2019-10-31', '05:00', 17000),
('ISB', '2019-10-31', '04:00', 'DXB', '2019-10-31', '13:00', 70000),
('DXB', '2019-10-30', '20:00', 'ISB', '2019-10-31', '05:00', 65000),
('DXB', '2019-10-31', '08:00', 'LHE', '2019-10-31', '16:00', 55000),
('DXB', '2019-10-31', '09:00', 'KHI', '2019-10-31', '18:00', 65000),
('KHI', '2019-10-21', '01:00', 'LHE', '2019-10-21', '03:00', 15000), 
('KHI', '2019-10-20', '08:00', 'LHE', '2019-10-20', '11:00', 18000), 
('LHE', '2019-10-15', '12:00', 'DXB', '2019-10-15', '20:00', 60000),
('DXB', '2019-10-18', '10:00', 'KHI', '2019-10-18', '19:00', 55000),
('LHE', '2019-10-20', '05:00', 'KHI', '2019-10-20', '08:00', 16000),
('LHE', '2019-10-23', '01:00', 'KHI', '2019-10-23', '03:00', 15000),
('KHI', '2019-10-28', '16:00', 'LHE', '2019-10-28', '19:00', 19000),
('ISB', '2019-10-27', '01:00', 'LHE', '2019-10-27', '02:00', 10000),
('ISB', '2019-10-23', '18:00', 'LHE', '2019-10-23', '19:00', 12000), 
('ISB', '2019-10-27', '02:00', 'KHI', '2019-10-27', '05:00', 17000),
('ISB', '2019-10-19', '04:00', 'DXB', '2019-10-19', '13:00', 70000),
('DXB', '2019-10-22', '20:00', 'ISB', '2019-10-23', '05:00', 65000),
('DXB', '2019-10-21', '08:00', 'LHE', '2019-10-21', '16:00', 55000),
('DXB', '2019-10-26', '09:00', 'KHI', '2019-10-26', '18:00', 65000);

INSERT INTO TicketRecord (PassengerID, flightID)
VALUES (1,1), (2,1), (3,1), (4,5), (11, 20), (2,10), (3,7), (4,6), (5,9), (5,22), (5,12), (6,3), (6,8), (6,9), (6,13), (6,18), (7,3), (7,9), (7,10), (7,23), (8,18), (8,16), (8,27), (8,2), (9,1), (9,2), (9,10), (9,16), (9,24), (10,10), (10,23), (10,22), (10,11), (10,15); 

