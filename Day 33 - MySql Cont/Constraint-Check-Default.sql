/*
SQL Constraints - SQL Constraints

1. Not Null Constraints
2. Unique Constraints
3. Primary Key 
4. Foreign Key
5. Check Constraints
6. Default Constraints
7. Index
*/

-- Create and use the customer database
CREATE DATABASE customer;
USE customer;

-- Create the person table with a composite primary key on id and last_name
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    CONSTRAINT pk_person PRIMARY KEY(id, last_name)
);

-- Drop the person table
DROP TABLE person;

-- Create the person table without a primary key
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT
);

-- Describe the person table structure
DESC person;

-- Drop the person table
DROP TABLE person;

-- Create the person table without a primary key
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT
);

-- Add a composite primary key on id and age
ALTER TABLE person ADD CONSTRAINT pk_person PRIMARY KEY(id, age);

-- Describe the person table structure
DESC person;

-- Drop primary key
ALTER TABLE person DROP PRIMARY KEY;

-- Drop the person table
DROP TABLE person;

-- Show all tables in the customer database
SHOW TABLES;

-- Create the person table with a unique constraint on id
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    UNIQUE(id) -- Ensure id values are unique
);

-- Describe the person table structure
DESC person;

-- Insert records into the person table
INSERT INTO person VALUES (2, 'Uzair', 'Hussain', 21);
INSERT INTO person VALUES (1, 'Subhan', 'Hussain', 18);

-- The following will give an error due to duplicate id
-- INSERT INTO person VALUES (2, 'Uzair2', 'Hussain2', 21);

-- Select all records from the person table
SELECT * FROM person;

-- Alter table to add a unique constraint on first_name
ALTER TABLE person ADD UNIQUE(first_name);

-- Add multi-column unique constraint on age and first_name
ALTER TABLE person ADD CONSTRAINT uc_person UNIQUE(age, first_name);

-- Describe the person table structure
DESC person;

-- Drop the multi-column unique constraint
ALTER TABLE person DROP INDEX uc_person;

-- Drop the person table
DROP TABLE person;

-- Foreign Key Constraints

-- Create the person table with a primary key on id
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    salary INT,
    PRIMARY KEY(id)
);

-- Describe the person table structure
DESC person;

-- Create the department table with a foreign key constraint referencing the person table
CREATE TABLE department (
    id INT NOT NULL,
    department_id INT NOT NULL,
    department_name VARCHAR(25) NOT NULL,
    PRIMARY KEY(department_id),
    CONSTRAINT fk_persondepartment FOREIGN KEY(id) REFERENCES person(id)
);

-- Describe the department table structure
DESC department;

-- Drop the department table
DROP TABLE department;

-- Create the department table without the foreign key
CREATE TABLE department (
    id INT NOT NULL,
    department_id INT NOT NULL,
    department_name VARCHAR(25) NOT NULL,
    PRIMARY KEY(department_id)
);

-- Describe the department table structure
DESC department;

-- Add a foreign key constraint to the department table
ALTER TABLE department ADD FOREIGN KEY(id) REFERENCES person(id);

-- Drop the department and person tables
DROP TABLE department;
DROP TABLE person;

-- Check Constraint

-- Create the person table with a check constraint on salary
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    salary INT,
    PRIMARY KEY(id),
    CHECK(salary < 50000) -- Ensures salary is less than 50000
);

-- The following will give an error due to salary constraint violation
-- INSERT INTO person VALUES (1, 'Uzair', 'Hussain', 21, 51000);

-- Insert records into the person table
INSERT INTO person VALUES (1, 'Uzair', 'Hussain', 21, 15000);

-- Select all records from the person table
SELECT * FROM person;

-- Drop the person table
DROP TABLE person;

-- Default Constraint

-- Create the person table with a default constraint on city_name
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    city_name VARCHAR(25) DEFAULT 'Hyderabad' -- Sets default value for city_name
);

-- Describe the person table structure
DESC person;

-- Drop the default constraint on city_name
ALTER TABLE person ALTER city_name DROP DEFAULT;
