/*
SQL Index - My SQL Indexes
CREATE INDEX statement in SQL is used to create indexes in tables.
The indexes are used to retrieve data from the database more quickly than others.
The user can not see the indexes, and they are just used to speed up queries /searches.
Note: Updating the table with indexes takes a lot of time than updating a table without index
It is because the indexes also need an update.
So, only create indexes on those columns that will be frequently searched against.
*/

-- Switch to the 'customer' database
USE customer;

-- Show all tables in the 'customer' database
SHOW TABLES;

-- Select all records from the 'person' table
SELECT * FROM person;

-- Create an index on the 'city_name' column of the 'person' table
CREATE INDEX index_city_name ON person(city_name);

-- Describe the structure of the 'person' table
DESC person;

-- Show all tables in the 'customer' database
SHOW TABLES;

-- Create the 'student' table with columns: id, first_name, last_name, and age
CREATE TABLE student (
    id INT NOT NULL,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    age INT
);

-- Create an index on the 'age' column of the 'student' table
CREATE INDEX index_age ON student(age);

-- Create a composite index on the 'age' and 'first_name' columns of the 'student' table
CREATE INDEX index_age_first_name ON student(age, first_name);

-- Describe the structure of the 'student' table
DESC student;

-- Drop the composite index on 'age' and 'first_name' columns of the 'student' table
ALTER TABLE student DROP INDEX index_age_first_name;

-- Drop the index on the 'age' column of the 'student' table
ALTER TABLE student DROP INDEX index_age;

-- Describe the structure of the 'student' table
DESC student;
