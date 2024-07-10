## Views
- Views is a virtual table based on the result set of an Sql query.
- A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
- we want to take a look on specific columns for specific research from different tables, so we can create a view that have multiple columns from different tables, which are needed, it's just a blueprint.
- we can not write aggergate function, having clause, have functions, while functions.
- we can use views when inner join query.

### SQL Views

**Definition:**
A SQL view is a virtual table based on the result set of a SELECT query. Views do not store data themselves but present data from one or more tables. They are used to simplify complex queries, enhance security, and provide a consistent interface.

### Creating and Using SQL Views

#### 1. Creating Tables
First, create the necessary tables. Here, we have `student` and `department` tables.

**Creating the `student` table:**
```sql
USE customer;

CREATE TABLE student(
    std_id INT AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    PRIMARY KEY(std_id)
);

DESC student;
```

**Inserting data into the `student` table:**
```sql
INSERT INTO student 
VALUES (1, 'Uzair', 'Hussain', 21),
       (2, 'Subhhan', 'Hussain', 18),
       (3, 'Tehseen', 'Hussain', 32);

SELECT * FROM student;
```

**Creating the `department` table:**
```sql
CREATE TABLE department(
    std_id INT AUTO_INCREMENT,
    depart_name VARCHAR(25) NOT NULL,
    FOREIGN KEY(std_id) REFERENCES student(std_id)
);

DESC department;
```

**Inserting data into the `department` table:**
```sql
INSERT INTO department 
VALUES (1, 'SWE'),
       (2, 'CS'),
       (3, 'EL');

SELECT * FROM department;
```

#### 2. Creating a View
Create a view to display combined data from the `student` and `department` tables.

**Example Query to Join Data:**
```sql
SELECT first_name, last_name, age 
FROM student 
INNER JOIN department USING (std_id);
```

**Creating the `student_info` view:**
```sql
CREATE VIEW student_info AS 
SELECT first_name, last_name, age 
FROM student 
INNER JOIN department USING (std_id);

SELECT * FROM student_info;
```

#### 3. Dropping a View
To remove the view when it's no longer needed:

**Dropping the `student_info` view:**
```sql
DROP VIEW student_info;
```

### Summary

1. **Creating Tables:**
   - **student** table with columns `std_id`, `first_name`, `last_name`, and `age`.
   - **department** table with columns `std_id` and `depart_name`, referencing `student(std_id)`.

2. **Inserting Data:**
   - Insert sample records into both tables.

3. **Creating a View:**
   - Create a view `student_info` to display a joined result of the `student` and `department` tables.

4. **Using the View:**
   - Query the view as if it were a regular table.

5. **Dropping the View:**
   - Remove the view when it's no longer required.

### Notes

- **Views** provide a simplified interface for complex queries.
- **Security:** Views can restrict user access to specific data.
- **Consistency:** Provide a consistent method of querying data, even if the underlying table structure changes.
- **Performance:** While views can simplify query writing, be mindful of their performance impact, especially with large data sets or complex joins.