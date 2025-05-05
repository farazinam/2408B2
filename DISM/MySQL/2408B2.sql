-- ------------------------------------ DAY 1 ---------------------------------------------------------
-- create database
CREATE DATABASE 2408B2;

-- use database
USE 2408B2;

-- create table
CREATE TABLE students (studentId INT, Name VARCHAR(100), age INT, city VARCHAR(100));

-- fetch data / read data
SELECT * FROM students;

-- insert single record
INSERT INTO students (studentId, Name, age, city) 
VALUES (2, 'Bilal', 24, 'Lahore');

-- insert multiple records
INSERT INTO students (studentId, Name, age, city) 
VALUES (3, 'Haider', 24, 'Karachi'), 
(4, 'Noman', 26, 'Murree'),
(5, 'Bilal', 22, 'Karachi');

-- delete all records
DELETE FROM students;

-- dlete specific record
DELETE FROM students WHERE studentId = 1;

SET SQL_SAFE_UPDATES = 0;

-- update record
UPDATE students SET Name = "Muntazir" WHERE studentId = 2;