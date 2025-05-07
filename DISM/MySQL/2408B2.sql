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
INSERT INTO students (studentId, Name, age, city, email) 
VALUES (2, 'Ali', 24, 'Lahore', 'ali@gmail.com');

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


-- ------------------------------------ DAY 2 ---------------------------------------------------------
-- DDL Queries
-- create
-- alter
-- drop
-- truncate
-- rename

SELECT * FROM students;

TRUNCATE students;
DELETE FROM students;

DROP TABLE students;

ALTER TABLE students ADD email VARCHAR (100);  -- add column
ALTER TABLE students DROP email;  -- delete column
ALTER TABLE students MODIFY COLUMN city INT;  -- change datatype
ALTER TABLE students CHANGE city shehr VARCHAR(255);  -- rename
UPDATE students SET email = 'ali@gmail.com' WHERE studentId = 2;

RENAME TABLE students TO pyarayBachay;

SELECT * FROM pyarayBachay;

INSERT INTO pyarayBachay (studentId) 
VALUES (9);

-- Table ceation with CONSTRAINTS
CREATE TABLE employees (
empId INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INT NOT NULL CHECK( age >= 18),
email VARCHAR(100) UNIQUE NOT NULL,
city VARCHAR(100) DEFAULT 'Karachi');

INSERT INTO employees
VALUES (2, 'faris', 18, 'faris@gmail.com', 'lahore');

SELECT * FROM employees;


