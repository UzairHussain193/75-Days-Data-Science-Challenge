
/*
Day 32 - SQL
- SQL Null Values
- SQL Update statement
- SQL Delete Statement
- SQL Alter table
  - add column in existing column
  - Modify/Alter Column
  - Alter Table - Drop Column
*/

-- Create the customer database
CREATE DATABASE customer;

-- Use the customer database
USE customer;

-- Create the customer_info table
CREATE TABLE customer_info (
    id INTEGER AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    salary INTEGER,
    PRIMARY KEY(id)
);

-- Show all databases
SHOW DATABASES;

-- Show all tables in the customer database
SHOW TABLES;

-- Insert demo values into the customer_info table
INSERT INTO customer_info (first_name, last_name, salary) 
VALUES 
('John', 'Doe', 50000),
('Jane', 'Smith', 60000),
('Alice', 'Johnson', 70000),
('Bob', 'Brown', NULL);

-- Select all records from the customer_info table
SELECT * FROM customer_info;

-- Select records with null salary
SELECT * FROM customer_info WHERE salary IS NULL;

-- Select records with non-null salary
SELECT * FROM customer_info WHERE salary IS NOT NULL;

-- Update the salary for the record with id=4
UPDATE customer_info SET salary = 68000 WHERE id = 4;

-- Select all records from the customer_info table
SELECT * FROM customer_info;

-- Delete the record with id=3
DELETE FROM customer_info WHERE id = 3;

-- Select all records from the customer_info table
SELECT * FROM customer_info;

-- Add email column to the customer_info table
ALTER TABLE customer_info ADD email VARCHAR(20);

-- Select all records from the customer_info table
SELECT * FROM customer_info;

-- Add dob (date of birth) column to the customer_info table
ALTER TABLE customer_info ADD dob DATE;

-- Modify dob column to year type
ALTER TABLE customer_info MODIFY dob YEAR;

-- Drop the dob column from the customer_info table
ALTER TABLE customer_info DROP COLUMN dob;