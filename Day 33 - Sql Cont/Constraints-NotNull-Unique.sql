/*
SQL Constraints - SQL Constraints
SQL constraints are used to specify any rules for the records in a table.
Constraints can be used to limit the type of data that can go into a table.
It ensures the accuracy and reliability of the records in the table, and
if there is any violation between the constraint and the record action,
the action is aborted. Constraints can be column level or table level.
Column level constraints apply to a column, and table-level constraints
apply to the whole table.

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

-- Create the student table
CREATE TABLE student (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT
);

-- Describe the student table
DESC student;

-- Modify the age column to not null
ALTER TABLE student MODIFY age INT NOT NULL;

-- Create the person table with unique constraint on id
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    UNIQUE(id)
);

-- Describe the person table
DESC person;

-- Insert records into the person table
INSERT INTO person VALUES (2, 'Uzair', 'Hussain', 21);
INSERT INTO person VALUES (1, 'Subhan', 'Hussain', 18);

-- The following will give an error due to duplicate id
-- INSERT INTO person VALUES (2, 'Uzair2', 'Hussain2', 21);

-- Select all records from the person table
SELECT * FROM person;

-- Alter table to add unique constraint on first_name
ALTER TABLE person ADD UNIQUE(first_name);

-- Add multi-column unique constraint
ALTER TABLE person ADD CONSTRAINT uc_person UNIQUE(age, first_name);

-- Describe the person table with constraints
DESC person;

-- Drop unique constraint
ALTER TABLE person DROP INDEX uc_person;

-- Create the person1 table with composite primary key
CREATE TABLE person1 (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    CONSTRAINT pk_person PRIMARY KEY (id, last_name)
);

-- Describe the person1 table
DESC person1;

-- Drop primary key
ALTER TABLE person1 DROP PRIMARY KEY;

-- Add primary key on id
ALTER TABLE person1 ADD PRIMARY KEY(id);

-- Drop the tables
DROP TABLE student;
DROP TABLE person;
DROP TABLE person1;

-- Show all tables
SHOW TABLES;



