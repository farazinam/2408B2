-- ------------------------------------ DAY 1 - Theory ---------------------------------------------------------

-- ------------------------------------ DAY 2 ---------------------------------------------------------
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


-- ------------------------------------ DAY 3 ---------------------------------------------------------
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

-- ------------------------------------ DAY 4 ---------------------------------------------------------
desc employees;

SELECT * FROM pyaraybachay;

SELECT name FROM pyaraybachay;
 
SELECT name, age FROM pyaraybachay;
SELECT name FROM pyaraybachay;

SELECT * FROM pyaraybachay WHERE age = 22;
SELECT age, name , shehr FROM pyaraybachay WHERE age = 22;

CREATE TABLE students AS SELECT name, age FROM pyaraybachay;

CREATE TABLE records (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
age INT NOT NULL CHECK(age >=18),
fees INT NOT NULL,
city VARCHAR(100));

SELECT * FROM records;

INSERT INTO records (name, age, fees, city)
VALUES ('Ali', 18, 6500, 'Karachi'),
('Bilal', 21,6300, 'Lahore' ),
('Faouzan', 21,6300, 'Lahore' ),
('Ibrahim', 21,6300, 'Lahore' ),
('Hassan', 21,6300, 'Lahore' ),
('Adil', 21,6300, 'Lahore' ),
('Usman', 21,6300, 'Lahore' ),
('Bilal', 27,7900, 'Lahore' ),
('Faouzan', 21,7200, 'Karachi' ),
('Mubashir', 21,6300, 'Lahore' ),
('Ali', 32,6300, 'Multan' ),
('Adil', 21,8200, 'Karachi' ),
('Amjad', 21,6300, 'Lahore' );

SET sql_mode = 'STRICT_ALL_TABLES';       -- to stop data insertion on not null.

SELECT * FROM records;
SELECT * FROM records WHERE city = 'Lahore';

SELECT * FROM records 
LIMIT 7;

SELECT * FROM records WHERE city = 'Lahore' LIMIT 6;

UPDATE records SET city = NULL WHERE id = 2;

SELECT * FROM records WHERE city IS NULL;
SELECT * FROM records WHERE NOT city IS NULL;

SELECT * FROM pyaraybachay;
SELECT shehr AS City FROM pyaraybachay;

SELECT id AS StudentID FROM records;

-- CLAUSES AND STATEMENTS
-- distinct
SELECT * FROM records;
SELECT DISTINCT * FROM records;
SELECT DISTINCT name, age, fees , city  FROM records;
SELECT DISTINCT city FROM records;
SELECT DISTINCT age FROM records;
SELECT DISTINCT name FROM records;

SELECT * FROM records WHERE age >= 22;

-- LOGICAL OPR
SELECT * FROM records WHERE city = 'karachi' AND age = 21;
SELECT * FROM records WHERE city = 'karachi' OR age = 21;

SELECT * FROM records WHERE city = 'karachi' AND age = 21 OR fees = 6300;
SELECT * FROM records WHERE city = 'karachi' OR age = 21 AND fees = 6300;
SELECT * FROM records WHERE city = 'karachi' AND (age = 21 OR fees = 6300);
SELECT * FROM records WHERE (city = 'karachi' AND age = 21) OR fees = 6300;

SELECT * FROM records WHERE age = 21 OR age = 24 OR age = 27 OR age = 32;
-- IN
SELECT * FROM records WHERE age IN (21, 24, 27, 32);
SELECT * FROM records WHERE NOT age IN (21, 24, 27, 32);

-- BETWEEN
SELECT * FROM records WHERE age BETWEEN 22 AND 27;
SELECT * FROM records WHERE NOT age BETWEEN 22 AND 27;


-- ------------------------------------ DAY 5 ---------------------------------------------------------

SELECT * FROM records;

SELECT * FROM records ORDER BY name;
SELECT * FROM records ORDER BY fees ASC;
SELECT * FROM records ORDER BY name DESC;

-- like opr
SELECT * FROM records WHERE name LIKE '%o%';
SELECT * FROM records WHERE name LIKE '%la%';
SELECT * FROM records WHERE name LIKE 'o%';
SELECT * FROM records WHERE name LIKE '%l';
SELECT * FROM records WHERE name LIKE '_d%';
SELECT * FROM records WHERE name LIKE '_a%';
SELECT * FROM records WHERE name LIKE '%a_';
SELECT * FROM records WHERE name LIKE '_b_';
SELECT * FROM records WHERE name LIKE '___u%';

-- Functions
 SELECT COUNT(*) AS Student_Count FROM records;
 SELECT COUNT(name) AS Student_Count FROM records;
SELECT COUNT(city) AS Student_Count FROM records;
SELECT COUNT(city) AS Student_Count FROM records WHERE city = 'Lahore';
SELECT COUNT(fees) AS Student_Count FROM records WHERE fees > 6500;

-- SUM
SELECT SUM(fees) FROM records;
SELECT name, SUM(fees) FROM records;

-- Max
SELECT id, name, MAX(fees) FROM records;

-- Min
SELECT id, name, MIN(fees) FROM records;
  
-- Avg
SELECT AVG(fees) FROM records;

-- SUBQUERIES 
SELECT name, fees FROM records WHERE fees = (SELECT MAX(fees) FROM records); 
SELECT name, fees FROM records WHERE fees = (SELECT MIN(fees) FROM records);  


-- ------------------------------------ DAY 6 ---------------------------------------------------------
SELECT * FROM records;

-- Group by
SELECT city, SUM(fees) AS SUM_OF_Students_Fees FROM records GROUP BY city;

SELECT city, COUNT(name) FROM records GROUP BY city;

-- Group By with WHERE
SELECT city, SUM(fees) AS SUM_OF_Students_Fees FROM records WHERE age > 20 GROUP BY city;
SELECT city, SUM(fees) AS SUM_OF_Students_Fees FROM records WHERE fees > 7000 GROUP BY city;

SELECT city, COUNT(name) FROM records WHERE age > 20 GROUP BY city;
SELECT city, COUNT(name) FROM records WHERE fees > 7000 GROUP BY city;

-- Group By with HAVING
SELECT city, SUM(fees) FROM records GROUP BY city HAVING SUM(fees) > 30000;
SELECT city, SUM(fees) FROM records GROUP BY city HAVING COUNT(*) >= 2;

-- JOINS
CREATE TABLE department (
deptId INT PRIMARY KEY AUTO_INCREMENT,
deptName VARCHAR(100) UNIQUE NOT NULL);

INSERT INTO department (deptName)
VALUES ('HR'),
('Marketing'),
('SRO');


CREATE TABLE employee (
empId INT PRIMARY KEY,
empName VARCHAR(100) NOT NULL,
empAge INT NOT NULL,
empSalary INT NOT NULL,
city VARCHAR(100),
departmentId INT,
FOREIGN KEY (departmentId) REFERENCES  department (deptId));

INSERT INTO employee (empId, empName, empAge, empSalary, city, departmentId)
VALUES (101, 'Ali', 22, 25000, 'Karachi', 3),
(102, 'Usman', 27, 35000, 'Lahore', 3),
(103, 'Umer', 24, 15000, 'Karachi', 1),
(104, 'Nasir', 22, 25000, 'Karachi', 1),
(105, 'Haider', 27, 35000, 'Lahore', 1),
(106, 'Ibrahim', 34, 15000, 'Karachi', 2),
(107, 'Asif', 22, 25000, 'Hyderabad', 2),
(108, 'Bilawal', 17, 45000, 'Hyderabad', 3),
(109, 'Maaz', 24, 19000, 'Karachi', 2);

SELECT * FROM department;
SELECT * FROM employee;

-- Inner Join
SELECT * FROM employee 
INNER JOIN department
ON department.deptId = employee.departmentId;

SELECT employee.empName, employee.city, department.deptName FROM employee 
INNER JOIN department
ON department.deptId = employee.departmentId;


-- ------------------------------------ DAY 7 ---------------------------------------------------------

INSERT INTO department (deptName)
VALUES ('Faculty'),
('Accounts');

INSERT INTO employee (empId, empName, empAge, empSalary, city, departmentId)
VALUES (110, 'Mudassir', 22, 25000, 'Karachi', Null),
(111, 'Kamran', 27, 35000, 'Lahore', Null),
(112, 'Umer', 24, 15000, 'Karachi', Null);

SELECT * FROM employee 
LEFT JOIN department
ON department.deptId = employee.departmentId;

SELECT employee.empName, employee.city, department.deptName FROM employee 
LEFT JOIN department
ON department.deptId = employee.departmentId;

SELECT employee.empName, employee.city, department.deptName FROM employee 
RIGHT JOIN department
ON department.deptId = employee.departmentId;

SELECT employee.empName, employee.city, department.deptName FROM employee 
RIGHT JOIN department
ON department.deptId = employee.departmentId;

SELECT * FROM employee 
LEFT JOIN department
ON department.deptId = employee.departmentId
UNION
SELECT * FROM employee 
RIGHT JOIN department
ON department.deptId = employee.departmentId;

SELECT employee.empName, employee.city, department.deptName FROM employee 
LEFT JOIN department
ON department.deptId = employee.departmentId
UNION
SELECT employee.empName, employee.city, department.deptName FROM employee 
RIGHT JOIN department
ON department.deptId = employee.departmentId;

-- self Join
CREATE TABLE empMan (
empId INT PRIMARY KEY AUTO_INCREMENT, 
empName VARCHAR (100) NOT NULL,
managerId INT,
FOREIGN KEY (managerId) REFERENCES empMan (empId));

DROP TABLE empMan;

INSERT INTO empMan(empName, managerId)
VALUES ('Wadood', NULL);

INSERT INTO empMan(empName, managerId)
VALUES('Hamza', 1),
('Zeeshan', 3),
('Ali', 2);

SELECT * FROM empMan;

SELECT e2.empName AS Employee, e1.empName AS Manager
FROM empMan e1
INNER JOIN empMan e2
ON e2.managerId = e1.empId;


-- ------------------------------------ DAY 8 ---------------------------------------------------------

CREATE TABLE products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR (100));

CREATE TABLE colors (
color INT PRIMARY KEY AUTO_INCREMENT,
color_name VARCHAR (100));

INSERT INTO products(product_name)
VALUES
('Shirt'),
('Hoodie'),
('Cap');

INSERT INTO colors(color_name)
VALUES
('red'),
('green'),
('blue');

SELECT * FROM products;
SELECT * FROM colors;

SELECT * FROM products 
CROSS JOIN colors;

SELECT product_name, color_name FROM products 
CROSS JOIN colors;


-- SUBQUERY

CREATE TABLE product(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert products
INSERT INTO product (product_id, product_name) VALUES
(1, 'Laptop'),
(2, 'Smartphone'),
(3, 'Tablet'),
(4, 'Monitor'),
(5, 'Keyboard');

-- Insert orders
INSERT INTO orders (order_id, product_id, customer_id) VALUES
(1001, 1, 101),
(1002, 2, 101),
(1003, 3, 102),
(1004, 4, 103),
(1005, 1, 102),
(1006, 2, 104);

SELECT * FROM product;
SELECT * FROM orders;

-- select
SELECT product_name
FROM product
WHERE product_id IN (SELECT product_id FROM orders WHERE customer_id = 101);

-- -- --------------------------------
-- Source table
CREATE TABLE employees1 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- Destination table
CREATE TABLE employees2 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10, 2)
);

INSERT INTO employees1 (employee_id, employee_name, salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 55000),
(4, 'Diana', 70000),
(5, 'Eve', 48000);

SELECT * FROM employees1;
SELECT * FROM employees2;

SELECT AVG(salary) FROM employees1;  -- 56600

-- insert 
INSERT INTO employees2 (employee_id, employee_name, salary)
SELECT employee_id, employee_name, salary
FROM employees1
WHERE salary > (SELECT AVG(salary) FROM employees1);

-- -- ---------------------------------------
-- update
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employes (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert into departments
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'IT');

-- Insert into employees
INSERT INTO employes (employee_id, employee_name, salary, department_id) VALUES
(101, 'Alice', 50000, 1),
(102, 'Bob', 55000, 1),
(103, 'Charlie', 60000, 2),
(104, 'Diana', 65000, 3);

SELECT * FROM departments;
SELECT * FROM employes;

UPDATE employes SET salary = salary * 1.1
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Sales');

-- ------------------------------------ DAY 9 ---------------------------------------------------------
-- work on phpmyadmin -  join 3 tables

-- ------------------------------------ DAY 10 ---------------------------------------------------------

-- TCL - Transaction Control Language

SELECT * FROM employees;

START TRANSACTION;
DELETE FROM employees WHERE empId = 1;

COMMIT;

ROLLBACK;

-- Stored Procedure
DELIMITER //
CREATE PROCEDURE sp_rec()
BEGIN
SELECT * FROM records;
END //
DELIMITER ;

CALL sp_rec();

DELIMITER //
CREATE PROCEDURE sp_recCon()
BEGIN
SELECT * FROM records WHERE city = 'Karachi';
END //
DELIMITER ;

CALL sp_recCon();

DELIMITER //
CREATE PROCEDURE sp_recConPara(IN c VARCHAR(100))
BEGIN
SELECT * FROM records WHERE city = c;
END //
DELIMITER ;

CALL sp_recConPara('Multan');

SHOW PROCEDURE STATUS;

SELECT * FROM records;

-- Functions (built-in)
SELECT COUNT(departmentId) FROM employee;
SELECT * FROM employee;

SELECT FLOOR(2.9);
SELECT FLOOR(2.3);
SELECT CEIL(6.9);
SELECT CEIL(6.1);
SELECT ROUND(5.5) AS RoundOFF;
SELECT ROUND(5.3);

SELECT SIN(0);
SELECT COS(0);
SELECT TAN(0);
SELECT ASIN(0);
SELECT ACOS(0);
SELECT ATAN(0);

SELECT CONCAT('Faraz' , ' ' ,'Inam') AS FULLNAME;

SELECT CONCAT(empId, ' ' , empName) AS NAMEandID FROM employee;

SELECT ASCII('A') AS ascii_value;  -- Output: 65

SELECT CHAR_LENGTH('MySQL') AS char_length;  -- Output: 5

SELECT REPLACE('Welcome to SQL', 'SQL', 'MySQL') AS replaced;  -- Output: Welcome to MySQL

SELECT REVERSE('MySQL') AS reversed;  -- Output: LQSyM

SELECT UCASE('mysql functions') AS uppercased;  -- Output: MYSQL FUNCTIONS

-- add constraint after table creation
ALTER TABLE abc
add constraint xyz
foreign key (cusId) references cusrtomer (customerid);

-- change column position after table creation
ALTER TABLE records
MODIFY COLUMN city VARCHAR(100) FIRST;

ALTER TABLE records
MODIFY COLUMN age INT AFTER fees;

SELECT * FROM records;
