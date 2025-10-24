-- ---------------- D A Y - 1 -------------------

CREATE DATABASE aptech2408B2;

USE aptech2408B2;

CREATE TABLE products (
product_id INT IDENTITY(101,1),
product_name VARCHAR(100) NOT NULL,
product_price INT NOT NULL,
product_description VARCHAR(255)
);

INSERT INTO product (product_name, product_price, product_description)
VALUES ('mouse', 1300, 'Dell'),
('CPU', 6200, 'Intel'),
('Headphone', 900, 'P47');

SELECT * FROM dbo.products;
SELECT * FROM products;

SELECT * FROM products WHERE product_name = 'mouse';

SELECT TOP 3 * FROM products;

-- ---------------- D A Y - 2 -------------------

-- DML Queries

DELETE FROM products WHERE product_id = 102;

UPDATE products SET product_price = 1100 WHERE product_id = 1104;

UPDATE products SET product_price = 2200, product_name = 'speaker', product_description = 'audionic' WHERE product_id = 103;

UPDATE products
SET product_name = 
    CASE 
        WHEN product_id = 101 THEN 'Keyboard'
        WHEN product_id = 1102 THEN 'LCD'
        WHEN product_id = 103 THEN 'Mic'
    END
WHERE product_id IN (101, 1102, 103);


-- Alter Table

-- Add Column
ALTER TABLE products ADD product_model VARCHAR(200);
ALTER TABLE products ADD product_desc VARCHAR(200);

-- Rename Column
EXEC sp_rename 'products.product_desc', 'product_availibility';

-- Change Column DT
ALTER TABLE products ALTER COLUMN product_availibility INT;

-- Delete Column
ALTER TABLE products DROP COLUMN product_model;

-- Table Rename
EXEC sp_rename 'products' , 'pro';

SELECT * FROM pro;

-- Truncate Table
TRUNCATE TABLE products;
DELETE FROM products;

-- Drop Table
DROP TABLE products;


-- ---------------- D A Y - 3 -------------------

-- Rename Database
ALTER DATABASE aptech2408B2 MODIFY NAME = _2408B2;

-- use/select Database
USE _2408B2;

-- Drop Database
DROP DATABASE _2408B2;

SELECT * INTO product  FROM pro;

-- C O N S T R A I N T S --

CREATE TABLE customers (
customer_id INT PRIMARY KEY IDENTITY (1,1),
name VARCHAR (100) NOT NULL,
age INT
CHECK (age >= 18),
city VARCHAR (50)
DEFAULT 'Karachi',
email VARCHAR (50) UNIQUE,
p_id INT,
FOREIGN KEY (p_id) REFERENCES product(product_id)
);

SELECT * FROM customers;


ALTER TABLE product ADD CONSTRAINT proPK PRIMARY KEY (product_id);

-- C L A U S E S

-- Where
SELECT * FROM product WHERE product_name = 'Headphone';
SELECT * FROM product;
SELECT product_name FROM product;

-- order by
SELECT * FROM product ORDER BY product_name;
SELECT * FROM product ORDER BY product_name ASC;

SELECT * FROM product ORDER BY product_price;

SELECT * FROM product ORDER BY product_name DESC;
SELECT * FROM product ORDER BY product_price DESC;

-- Distinct
SELECT DISTINCT product_name from product;
SELECT DISTINCT * from product;
SELECT DISTINCT product_name, product_price, product_description from product;


-- ---------------- D A Y - 4 -------------------

-- BETWEEN
SELECT * FROM product WHERE product_price BETWEEN 1000 AND 2000;
SELECT * FROM product WHERE NOT product_price BETWEEN 1000 AND 2000;

 -- >, >=, <, <=, !=
SELECT * FROM product WHERE product_price > 1300;
SELECT * FROM product WHERE product_price >= 1300;

SELECT * FROM product WHERE product_price != 1300;
SELECT * FROM product WHERE NOT product_price = 6200;

-- IN
SELECT * FROM product WHERE product_price IN (1300, 2200, 6200);
SELECT * FROM product WHERE product_price = 1300 OR product_price = 2200 OR product_price = 6200;

-- LIKE
SELECT * FROM product WHERE product_name LIKE '%o%';
SELECT * FROM product WHERE product_name LIKE 'm%';
SELECT * FROM product WHERE product_name LIKE '%e';
SELECT * FROM product WHERE product_name LIKE '%s_';
SELECT * FROM product WHERE product_name LIKE '_s%';
SELECT * FROM product WHERE product_name LIKE '_s_';
SELECT * FROM product WHERE product_name LIKE '_s__';

-- Function
-- Aggregate Functions (SUM, MIN, MAX,COUNT, AVERAGE)

SELECT * FROM product;

SELECT SUM(product_price) AS SumOfProductPrice FROM product;
SELECT SUM(product_id) AS SumOfProductId FROM product;

SELECT COUNT(*) FROM product;
SELECT COUNT(product_name) FROM product;
SELECT COUNT(product_availibility) FROM product;

SELECT MAX(product_price) FROM product;
SELECT MIN(product_price) FROM product;

-- Group By
SELECT product_name, MAX(product_price) from product Group By product_name;
SELECT product_name, MIN(product_price) from product Group By product_name;
SELECT product_name, SUM(product_price) from product Group By product_name;
SELECT product_name, AVG(product_price) from product Group By product_name;
SELECT product_name, COUNT(*) from product Group By product_name;


-- ---------------- D A Y - 5 -------------------

SELECT * FROM product;

-------- LOGICAL OPR ------
-- Not Operator
SELECT product_name, product_price from product where not product_description='Dell';

-- AND OPERATOR 
SELECT product_name, product_price from product 
where not product_description='Intel' and product_price>=2000;

--OR OPERATOR
SELECT product_name, product_price from product 
where product_description='Intel' or product_price>=2000;

SELECT product_name, product_price from product 
where not product_description='Intel' or product_price>=2000;


--comparison
 -- =
 -- <>

SELECT product_name, product_price from product where product_price <> 7000;
SELECT product_name, product_price from product where product_price != 7000;
SELECT product_name, product_price from product where not product_price = 7000;

 -- > 
 -- <
 -- >=
 -- <=


 -- TCL (Transaction Query Language)

  INSERT INTO customers (name, age, city, email, p_id) -- Implicit TRansaction
VALUES ('ali', 28, 'Lahore', 'ali@gmail.com', 103);

 BEGIN TRANSACTION -- Explicit Transaction
 INSERT INTO customers (name, age, city, email, p_id)
VALUES ('Daniyal', 28, 'Lahore', 'daniyal@gmail.com', 103);

-- either
ROLLBACK;

-- commit
COMMIT;

select * from customers;

-- Variable
DECLARE @city VARCHAR(100)
SET @city = 'Karachi';
SELECT * FROM customers WHERE city = @city;

DECLARE @age INT
SET @age = 18;
SELECT * FROM customers WHERE age = @age;


SELECT * FROM customers WHERE city = 'Karachi';


-- ---------------- D A Y - 6 -------------------

-- CUSTOM/USER-DEFINED FUNCTION

-- NON-PARAMETARIZED

CREATE FUNCTION xyz()
RETURNS VARCHAR(100)
AS
BEGIN 
DECLARE @name VARCHAR(50)
SET @name = 'Ali';
RETURN @name
END

SELECT dbo.xyz();

CREATE FUNCTION num()
RETURNS INT
AS
BEGIN 
DECLARE @n INT
SET @n = 200;
RETURN @n
END

SELECT dbo.num();


-- PARAMETARIZED

CREATE FUNCTION fne(
@fname VARCHAR(50),
@lname VARCHAR(50)
)
RETURNS VARCHAR(100)
AS
BEGIN 
DECLARE @fullname VARCHAR(50)
SET @fullname = @fname + ' ' + @lname;
RETURN @fullname
END

SELECT dbo.fne('faraz' , 'inam');


-- STORED PRODCEDURE

CREATE PROCEDURE sel
AS 
BEGIN
SELECT * FROM product;
END

sel
-- or
EXEC sel
-- or
EXECUTE sel

CREATE PROCEDURE selWithCon
AS 
BEGIN
SELECT * FROM product WHERE product_price >= 2000;
END

selWithCon


CREATE PROCEDURE selWithConPara
@pprice INT
AS 
BEGIN
SELECT * FROM product WHERE product_price = @pprice;
END

selWithConPara 3100;



CREATE PROCEDURE selWithConPara2
@pname VARCHAR(100),
@pprice INT
AS 
BEGIN
SELECT * FROM product WHERE product_name = @pname OR product_price = @pprice;
END

selWithConPara2 'CPU' , 3100;

ALTER PROCEDURE selWithConPara2
@pname VARCHAR(100),
@pprice INT
AS 
BEGIN
SELECT * FROM product WHERE product_name = @pname AND product_price = @pprice;
END


DROP PROCEDURE sel

sp_helptext selWithCon


-- ERROR HANDLING

PRINT 2/0; -- Divide by zero error encountered.

BEGIN TRY
DECLARE @a INT = 7, @b INT = 0;
PRINT @a/@b;
END TRY

BEGIN CATCH
PRINT 'Denominator Could Not Be ZERO - Syntax Error'
END CATCH


BEGIN TRY
DECLARE @x INT = 7, @y INT = 0;
PRINT @x/@y;
END TRY

BEGIN CATCH
    PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR);
    PRINT 'Error Message: ' + ERROR_MESSAGE();
    PRINT 'Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR);
    PRINT 'State: ' + CAST(ERROR_STATE() AS VARCHAR);
    PRINT 'Line: ' + CAST(ERROR_LINE() AS VARCHAR);
END CATCH


-- ---------------- D A Y - 7 -------------------

-- JOIN

SELECT * FROM product;
SELECT * FROM customers;


-- INNER JOIN

SELECT * FROM product
INNER JOIN customers
ON product_id = p_id;

SELECT * FROM product
INNER JOIN customers
ON product.product_id = customers.p_id;

SELECT customers.name, customers.city, product.product_name, product.product_price, product.product_description FROM product
INNER JOIN customers
ON product.product_id = customers.p_id;

-- ALAIS
SELECT p.product_name, p.product_price, p.product_description, c.name, c.city
FROM product AS p
INNER JOIN customers AS c
ON p.product_id = c.p_id;

-- INSERT INTO customers (name, age, city, email, p_id)
-- VALUES ('sheraz', 22, 'Karachi', 'sheraz@gmail.com', null);

--INSERT INTO product (product_name, product_price)
--VALUES('book', 4400),
--('AC', 120000);


-- LEFT JOIN 

SELECT p.product_name, p.product_price, p.product_description, c.name, c.city
FROM product AS p
LEFT JOIN customers AS c
ON p.product_id = c.p_id;


-- RIGHT JOIN 

SELECT p.product_name, p.product_price, p.product_description, c.name, c.city
FROM product AS p
RIGHT JOIN customers AS c
ON p.product_id = c.p_id;


-- FULL JOIN 

SELECT p.product_name, p.product_price, p.product_description, c.name, c.city
FROM product AS p
FULL JOIN customers AS c
ON p.product_id = c.p_id;


-- ---------------- D A Y - 8 -------------------

CREATE TABLE orders (
order_id INT PRIMARY KEY IDENTITY,
p_id INT,
c_id INT,
o_qty INT,
o_date DATETIME default GETDATE(),
FOREIGN KEY (p_id) REFERENCES product (product_id),
FOREIGN KEY (c_id) REFERENCES customers (customer_id),
);



SELECT * FROM customers;

ALTER TABLE customers DROP COLUMN p_id;

UPDATE customers SET p_id = NULL WHERE CITY = 'Lahore';

-- To Know the name of Contraint
    SELECT
        fk.name AS ForeignKeyName
    FROM
        sys.foreign_keys AS fk
    WHERE
        fk.parent_object_id = OBJECT_ID('customers'); -- Replace 'YourTableName'

-- DROP Constraint
	ALTER TABLE customers
    DROP CONSTRAINT FK__customers__p_id__4F7CD00D;

SELECT * FROM product;
SELECT * FROM customers;
SELECT * FROM orders;

INSERT INTO orders (p_id, c_id, o_qty)
VALUES (101, 1, 2),
(101, 4, 1),
(103, 1, 3),
(101, 9, 2);

-- JOINS (Three Tables)
SELECT * FROM orders
JOIN customers
ON orders.c_id = customers.customer_id
JOIN product
ON orders.p_id = product.product_id;

SELECT customers.name, customers.city, product.product_name, product.product_price, orders.o_qty, orders.o_date FROM orders
JOIN customers
ON orders.c_id = customers.customer_id
JOIN product
ON orders.p_id = product.product_id;

SELECT c.name, c.city, p.product_name, p.product_price, o.o_qty, o.o_date 
FROM orders o
JOIN customers c
ON o.c_id = c.customer_id
JOIN product p
ON o.p_id = p.product_id;

-- INDEXES