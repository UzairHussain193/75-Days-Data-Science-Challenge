-- Switch to the customer database
USE customer;

-- Create the student table with columns: std_id, first_name, last_name, age
CREATE TABLE student(
    std_id INT AUTO_INCREMENT,           -- Auto-incrementing primary key
    first_name VARCHAR(25) NOT NULL,     -- First name of the student
    last_name VARCHAR(25) NOT NULL,      -- Last name of the student
    age INT,                             -- Age of the student
    PRIMARY KEY(std_id)                  -- Primary key constraint
);

-- Describe the structure of the student table
DESC student;

-- Insert sample data into the student table
INSERT INTO student 
VALUES (1, 'Uzair', 'Hussain', 21),
       (2, 'Subhhan', 'Hussain', 18),
       (3, 'Tehseen', 'Hussain', 32);

-- Select all data from the student table to verify the insertions
SELECT * FROM student;

-- Create the department table with columns: std_id, depart_name
CREATE TABLE department(
    std_id INT AUTO_INCREMENT,           -- Auto-incrementing primary key
    depart_name VARCHAR(25) NOT NULL,    -- Department name
    FOREIGN KEY(std_id) REFERENCES student(std_id)  -- Foreign key referencing student table
);

-- Describe the structure of the department table
DESC department;

-- Insert sample data into the department table
INSERT INTO department 
VALUES (1, 'SWE'),
       (2, 'CS'),
       (3, 'EL');

-- Select all data from the department table to verify the insertions
SELECT * FROM department;

-- Select specific columns from both student and department tables using an inner join
SELECT first_name, last_name, age 
FROM student 
INNER JOIN department USING (std_id);

-- Create a view named student_info based on the joined result of student and department tables
CREATE VIEW student_info AS 
SELECT first_name, last_name, age 
FROM student 
INNER JOIN department USING (std_id);

-- Select all data from the student_info view to verify its creation
SELECT * FROM student_info;

-- Drop the student_info view when no longer needed
DROP VIEW student_info;
