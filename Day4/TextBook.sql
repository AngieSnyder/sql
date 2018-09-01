-- create and select the database
DROP DATABASE IF EXISTS TextBook;
CREATE DATABASE TextBook;
USE TextBook;

-- create the TextBook Product table
CREATE TABLE Product (
  ID            INT             PRIMARY KEY     AUTO_INCREMENT,
  TextBook   	VARCHAR(200)    NOT NULL,
  Price        	DECIMAL(10.2)   NOT NULL
);

-- insert some rows into the TextBook Product table
INSERT INTO Product VALUES
(1, 'Fluid Dynamics', '250.00'),
(2, 'Thermodynamics', '300.00'),
(3, 'Calculus 3', '185.00');

-- create the TextBook Buyer table
CREATE TABLE Buyer (
  ID           INT           PRIMARY KEY     AUTO_INCREMENT,
  TextbookID   INT			  NOT NULL,
  Buyer        VARCHAR(50)   NOT NULL, 
  Foreign Key  (TextbookID) references Product(ID)
);

-- insert some rows into the Buyer table
INSERT INTO Buyer VALUES
(1, '2', 'Rachael Baumann'),
(2, '2', 'John Falconer'),
(3, '3', 'Neil Hendren');

-- create a user and grant privileges to that user
-- GRANT SELECT, INSERT, DELETE, UPDATE
-- ON roller_coaster_db.*
-- TO roller_coaster_db_user@localhost
-- IDENTIFIED BY 'sesame';
