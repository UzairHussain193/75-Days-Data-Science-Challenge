-- Create the company database
create database company;

-- Use the company database
use company;

-- Create the employee table
create table employee(
    empid int not null primary key auto_increment,
    first_name varchar(25),
    last_name varchar(25),
    salary int,
    joining_date datetime,
    depart_name varchar(25)
);

-- Create the bonus table with foreign key reference to employee
create table bonus(
    emp_ref_id int,
    bonus_amt int,
    bonus_date datetime,
    foreign key(emp_ref_id) references employee(empid) on delete cascade
);

-- Create the designation table with foreign key reference to employee
create table designation(
    emp_ref_id int,
    designation varchar(25),
    designation_date datetime, 
    foreign key(emp_ref_id) references employee(empid) on delete cascade
);

-- Show all tables
show tables;

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

-- Insert additional employees with duplicate departments
INSERT INTO employee (first_name, last_name, salary, joining_date, depart_name) VALUES
('David', 'Miller', 45000, '2021-04-18 09:30:00', 'Marketing'),
('Emma', 'Wilson', 62000, '2022-11-23 14:20:00', 'Marketing'),
('Olivia', 'Martinez', 48000, '2021-08-02 10:15:00', 'HR');

-- Display all records in the employee table
select * from employee;

-- Queries for interview practice

-- 1. Retrieve all details where first name starts with 'J'
select * from employee where first_name like 'J%';

-- 2. Print all details of employees whose salary is between 10k to 35k
select * from employee where salary between 10000 and 35000;
-- or
select concat(first_name, ' ', last_name) as Employee_name, salary 
from employee where empid in
(select empid from employee where salary between 10000 and 35000);

-- 3. Retrieve details of employees who joined on a specific date or month/year
-- Specific date
select * from employee where date(joining_date) = '2021-05-15';
-- Specific month/year
select * from employee where year(joining_date) = 2023;

-- 4. Fetch the number of employees in each department
select depart_name, count(*) as employee_count from employee group by depart_name;

-- 5. Print details of employees who are also managers
select employee.first_name, designation.designation from employee 
inner join designation on employee.empid = designation.emp_ref_id 
and designation.designation = 'Manager';
-- or
select employee.first_name, designation.designation from employee 
inner join designation on employee.empid = designation.emp_ref_id 
and designation.designation in ('Manager');

-- 6. Clone a new table from another table
create table clone_employee like employee;
select * from clone_employee;
desc clone_employee;

-- 7. Show top n salaries of employees
select * from employee order by salary desc limit 6;

-- 8. Determine the 6th highest salary
select * from employee order by salary desc limit 5, 1;

-- 9. Determine the 6th highest salary without using LIMIT
select salary from employee e1 
where 6 = (select count(distinct salary) from employee e2 where e2.salary >= e1.salary);
