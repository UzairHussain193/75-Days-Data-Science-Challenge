### Notes on SQL Interview Questions and Practice Queries

#### Easy Queries

1. **Retrieve all details where first name from employee starts with 'J':**
   ```sql
   select * from employee where first_name like 'J%';
   ```

2. **Print all details of employees whose salary is between 10k to 35k:**
   ```sql
   select * from employee where employee.salary between 10000 and 35000;
   ```
   or
   ```sql
   select concat(first_name, ' ', last_name) as Employee_name, salary 
   from employee where empid in
   (select empid from employee where employee.salary between 10000 and 35000);
   ```

3. **Retrieve details of employees who joined on a specific date or month:**
   - For a specific date (e.g., 2021-05-15):
     ```sql
     select * from employee where date(joining_date) = '2021-05-15';
     ```
   - For a specific month/year (e.g., March 2023):
     ```sql
     select * from employee where year(joining_date) = 2023;
     ```

4. **Fetch the number of employees in every department:**
   ```sql
   select depart_name, count(*) as employee_count from employee group by depart_name;
   ```

5. **Print details of employees who are also managers:**
   ```sql
   select employee.first_name, designation.designation from employee 
   inner join designation on employee.empid = designation.emp_ref_id 
   and designation.designation = 'Manager';
   ```
   or
   ```sql
   select employee.first_name, designation.designation from employee 
   inner join designation on employee.empid = designation.emp_ref_id 
   and designation.designation in ('Manager');
   ```

6. **Clone a new table from another table:**
   ```sql
   create table clone_employee like employee;

   select * from clone_employee;
   desc clone_employee;
   ```

7. **Show top n salaries of employees:**
   ```sql
   select * from employee order by salary desc limit 6;
   ```

8. **Determine the 6th highest salary:**
   ```sql
   select * from employee order by salary desc limit 5, 1;
   -- You can write limit like n-1, 1
   ```

9. **Determine the 6th highest salary without using `LIMIT`:**
   ```sql
   select salary from employee e1 
   where 6 = (select count(distinct salary) from employee e2 where e2.salary >= e1.salary);
   ```

These queries provide a range of common SQL interview questions that test understanding of SQL operations such as filtering, joining, aggregating, and subqueries. They also cover practical skills like creating and cloning tables.