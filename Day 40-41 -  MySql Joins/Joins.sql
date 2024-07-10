-- sql joins helps us to retreive data from two or more tables
-- these tables are linkeded with some primary, foreign and other keys
-- SQL Script

-- Switch to the customer database
USE customer;

-- Display all data from the student table
SELECT * FROM student;

-- Insert additional data into the student table
INSERT INTO student VALUES (4, 'Hammad', 'Hussain', 22)
                            (5, 'Affan', 'Hussain', 3);

-- Display all data from the department table
SELECT * FROM department;

## Inner Join
-- Inner join retrieves records that have matching values in both tables
SELECT * FROM student INNER JOIN department 
    ON student.std_id = department.std_id;
    
-- Retrieve specific columns from student and department tables using inner join
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student INNER JOIN department 
    ON student.std_id = department.std_id;
-- This query shows only records that have been allotted a department

## Left Join (or Left Outer Join)
-- Left join retrieves all records from the left table and matched records from the right table
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student LEFT JOIN department 
    ON student.std_id = department.std_id;
-- This query shows all records from the left table (student)

## Right Join (or Right Outer Join)
-- Right join retrieves all records from the right table and matched records from the left table
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student RIGHT JOIN department 
    ON student.std_id = department.std_id;
-- This query shows all records from the right table (department)

## Full Outer Join
-- Full outer join retrieves all records when there is a match in either left or right table
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student LEFT JOIN department 
    ON student.std_id = department.std_id
    
UNION
    
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student RIGHT JOIN department 
    ON student.std_id = department.std_id;
-- This query shows all records from both tables

## Cross Join
-- Cross join returns the Cartesian product of the two tables
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student CROSS JOIN department;
-- This query shows all possible combinations of rows from the two tables

## Natural Join
-- Natural join automatically joins tables based on columns with the same name and data type
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student NATURAL JOIN department;
