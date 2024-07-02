
/*
Create database
Drop Database
create table
insert into table
drop table
*/

-- Show all databases
SHOW DATABASES;

-- Use the world database
USE world;

-- Show all tables in the world database
SHOW TABLES;

-- Select all records from the countrylanguage table
SELECT * FROM countrylanguage;

-- Create a new database named customers
CREATE DATABASE customers;

-- Drop the customers database
DROP DATABASE customers;

-- Create and use the customers database
CREATE DATABASE customers;
USE customers;

-- Create a new table named customer_info in the customers database
CREATE TABLE customer_info (
    id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

-- Show all tables in the customers database
SHOW TABLES;

-- Select all records from the customer_info table
SELECT * FROM customer_info;

-- Insert records into the customer_info table
INSERT INTO customer_info (id, first_name, last_name, age) 
VALUES (1, 'Uzair', 'Hussain', 21);

INSERT INTO customer_info (id, first_name, last_name, age) 
VALUES (2, 'Razi', 'Rizwan', 20);

-- Drop the customer_info table
DROP TABLE customer_info;

-- Show all tables in the customers database
SHOW TABLES;

-- Drop the customers database
DROP DATABASE customers;

-- Show all databases
SHOW DATABASES;

-- (Uncomment to use the world database again)
-- USE world;

-- (Uncomment to show all tables in the world database again)
-- SHOW TABLES;

-- (Uncomment to drop the customer_info table in the world database if it exists)
-- DROP TABLE customer_info;