### Notes for SQL Script

#### Creating and Using the Database
```sql
-- Create a new database named company
create database company;

-- Select the company database for use
use company;
```

#### Creating Tables
```sql
-- Create the employee table with relevant columns and a primary key
create table employee(
    empid int not null primary key auto_increment,
    first_name varchar(25),
    last_name varchar(25),
    salary int,
    joining_date datetime,
    depart_name varchar(25)
);

-- Create the bonus table with a foreign key referencing the employee table
create table bonus(
    emp_ref_id int,
    bonus_amt int,
    bonus_date datetime,
    foreign key(emp_ref_id) references employee(empid) on delete cascade
);

-- Create the designation table with a foreign key referencing the employee table
create table designation(
    emp_ref_id int,
    designation varchar(25),
    designation_date datetime, 
    foreign key(emp_ref_id) references employee(empid) on delete cascade
);

-- Show all tables in the company database
show tables;
```

#### Inserting Values into Tables
```sql
-- Insert values into the employee table
INSERT INTO employee (first_name, last_name, salary, joining_date, depart_name) VALUES
('John', 'Doe', 50000, '2022-01-10 09:00:00', 'HR'),
('Jane', 'Smith', 60000, '2021-05-15 10:30:00', 'Finance'),
('Alice', 'Johnson', 70000, '2023-03-20 11:00:00', 'IT'),
('Bob', 'Brown', 55000, '2020-07-22 08:45:00', 'Marketing'),
('Charlie', 'Davis', 80000, '2019-11-10 09:15:00', 'Sales');

-- Insert values into the bonus table
INSERT INTO bonus (emp_ref_id, bonus_amt, bonus_date) VALUES
(1, 5000, '2022-12-25 10:00:00'),
(2, 6000, '2021-12-25 10:00:00'),
(3, 7000, '2023-12-25 10:00:00'),
(4, 5500, '2020-12-25 10:00:00'),
(5, 8000, '2019-12-25 10:00:00');

-- Insert values into the designation table
INSERT INTO designation (emp_ref_id, designation, designation_date) VALUES
(1, 'Manager', '2022-06-01 09:00:00'),
(2, 'Senior Analyst', '2021-08-15 10:30:00'),
(3, 'Team Lead', '2023-05-20 11:00:00'),
(4, 'Marketing Head', '2020-09-22 08:45:00'),
(5, 'Sales Director', '2019-12-10 09:15:00');
```

#### Altering the Employee Table
```sql
-- Alter the employee table to modify the salary column if necessary
ALTER TABLE employee MODIFY salary INT;
```

#### Updating Salaries
```sql
-- Disable safe updates mode to allow updates without a key column in the WHERE clause
SET SQL_SAFE_UPDATES = 0;

-- Update the salaries of the employees
UPDATE employee SET salary = 10000 WHERE first_name = 'John' AND last_name = 'Doe';
UPDATE employee SET salary = 20000 WHERE first_name = 'Jane' AND last_name = 'Smith';
UPDATE employee SET salary = 30000 WHERE first_name = 'Alice' AND last_name = 'Johnson';
UPDATE employee SET salary = 40000 WHERE first_name = 'Bob' AND last_name = 'Brown';
UPDATE employee SET salary = 50000 WHERE first_name = 'Charlie' AND last_name = 'Davis';

-- Re-enable safe updates mode
SET SQL_SAFE_UPDATES = 1;
```

#### Verifying Data
```sql
-- Select all records from the employee table to verify updates
select * from employee;

-- Select all records from the bonus table
select * from bonus;

-- Select all records from the designation table
select * from designation;
```

This script creates a new database, defines three related tables, inserts initial values, alters one table, updates the salaries of the employees, and verifies the changes.