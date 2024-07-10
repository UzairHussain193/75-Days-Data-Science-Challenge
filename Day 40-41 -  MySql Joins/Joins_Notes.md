# SQL Joins

1. Inner Join
2. Left Join
3. Right Join
4. Full Join
5. Natural Join
6. Cross Join

### SQL Joins

SQL Joins are used to combine rows from two or more tables based on a related column between them. There are several types of joins, each serving a different purpose.

**Types of SQL Joins:**
1. **Inner Join**
2. **Left Join (Left Outer Join)**
3. **Right Join (Right Outer Join)**
4. **Full Join (Full Outer Join)**
5. **Natural Join**
6. **Cross Join**

### Detailed Notes

#### 1. Inner Join
An inner join returns only the rows that have matching values in both tables.

```sql
USE customer;

-- Select all records from the student table
SELECT * FROM student;

-- Insert new records into the student table
INSERT INTO student VALUES (4, 'Hammad', 'Hussain', 22);
INSERT INTO student VALUES (5, 'Affan', 'Hussain', 3);

-- Select all records from the department table
SELECT * FROM department;

-- Inner Join: Retrieve records with matching std_id in both tables
SELECT * FROM student INNER JOIN department 
    ON student.std_id = department.std_id;

-- Select specific columns with Inner Join
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student 
INNER JOIN department 
    ON student.std_id = department.std_id;
-- This query will show only records that have been allotted a department
```

#### 2. Left Join (Left Outer Join)
A left join returns all rows from the left table, and the matched rows from the right table. If no match is found, NULL values are returned for columns from the right table.

```sql
-- Left Join: Retrieve all records from the left table (student)
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student 
LEFT JOIN department 
    ON student.std_id = department.std_id;
-- This query will show all the records in the left table (student)
```

#### 3. Right Join (Right Outer Join)
A right join returns all rows from the right table, and the matched rows from the left table. If no match is found, NULL values are returned for columns from the left table.

```sql
-- Right Join: Retrieve all records from the right table (department)
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student 
RIGHT JOIN department 
    ON student.std_id = department.std_id;
-- This query will show all the records in the right table (department), same as inner join result
```

#### 4. Full Join (Full Outer Join)
A full join returns all rows when there is a match in either left or right table. If there is no match, the result is NULL on the side that does not have a match.

```sql
-- Full Join: Combine results of left join and right join
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student 
LEFT JOIN department 
    ON student.std_id = department.std_id

UNION

SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student 
RIGHT JOIN department 
    ON student.std_id = department.std_id;
-- This query will show all the records in all tables
```

#### 5. Cross Join
A cross join returns the Cartesian product of the two tables, i.e., it returns all possible combinations of rows from the tables.

```sql
-- Cross Join: Retrieve all possible combinations of rows from both tables
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student 
CROSS JOIN department;
-- This will show all possible combinations of cross combinations
```

#### 6. Natural Join
A natural join is based on all columns in the two tables that have the same name and selects rows with equal values in the relevant columns.

```sql
-- Natural Join: Retrieve records with matching column names
SELECT student.std_id, student.first_name, student.last_name, student.age, 
    department.depart_name 
FROM student 
NATURAL JOIN department;
```

### Interview Questions

1. **What is the difference between an SQL inner join and an SQL left join?**
   - An inner join returns only the rows that have matching values in both tables.
   - A left join returns all rows from the left table, and the matched rows from the right table. If no match is found, NULL values are returned for columns from the right table.

2. **What is the difference between a left join and a full join?**
   - A left join returns all rows from the left table, and the matched rows from the right table. If no match is found, NULL values are returned for columns from the right table.
   - A full join returns all rows when there is a match in either left or right table. If there is no match, the result is NULL on the side that does not have a match.

3. **What is the query that will join these tables so that all rows from table 1 are in the result?**
   - Use a left join to ensure all rows from the first table (left table) are included in the result.
   ```sql
   SELECT student.std_id, student.first_name, student.last_name, student.age, 
       department.depart_name 
   FROM student 
   LEFT JOIN department 
       ON student.std_id = department.std_id;
   ```

### Notes -  Conclusion

- **Inner Join:** Use when you need only the matching records from both tables.
- **Left Join:** Use when you need all records from the left table, and only matching records from the right table.
- **Right Join:** Use when you need all records from the right table, and only matching records from the left table.
- **Full Join:** Use when you need all records from both tables, regardless of matches.
- **Cross Join:** Use when you need all possible combinations of rows from both tables.
- **Natural Join:** Use when you need to join tables based on columns with the same name and data type automatically.