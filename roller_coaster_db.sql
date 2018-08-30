-- create and select the database
DROP DATABASE IF EXISTS roller_coaster_db;
CREATE DATABASE roller_coaster_db;
USE roller_coaster_db;

-- create the RollerCoaster table
CREATE TABLE RollerCoaster (
  ID               INT             PRIMARY KEY     AUTO_INCREMENT,
  Roller_Coaster   VARCHAR(200)    NOT NULL,
  Speed_MPH        INT(4)          NOT NULL,
  SpeedRank        INT(2)          NOT NULL        unique
);

-- insert some rows into the RollerCoaster table
INSERT INTO RollerCoaster VALUES
(1, 'Kingda Ka', '128', '1'),
(2, 'Top Thrill Dragster', '120', '2'),
(3, 'Superman', '100', '3'),
(4, 'Fury 325', '95', '4');

-- create the Location table
CREATE TABLE Location (
  ID            INT           PRIMARY KEY     AUTO_INCREMENT,
  City          VARCHAR(20)   NOT NULL,
  State         VARCHAR(2)    NOT NULL, 
  SpeedRank     INT(2)        NOT NULL,       
  Foreign Key   (SpeedRank)   references RollerCoaster(SpeedRank)
);

-- insert some rows into the Location table
INSERT INTO Location VALUES
(1, 'Charlotte', 'NC', '4'),
(2, 'Jackson', 'NJ', '1'),
(3, 'Sandusky', 'OH', '2'),
(4, 'Valencia', 'CA', '3');

-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON roller_coaster_db.*
TO roller_coaster_db_user@localhost
IDENTIFIED BY 'sesame';CREATE TABLE Location (   ID            INT           PRIMARY KEY     AUTO_INCREMENT,   City          VARCHAR(20)   NOT NULL,   State         VARCHAR(2)    NOT NULL,    SpeedRank     INT(2)        NOT NULL,   Foreign Key   (SpeedRank)   references RollerCoaster(SpeedRank) )
