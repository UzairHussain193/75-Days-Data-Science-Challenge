## SQL Constraints
SQL constraints are rules that are applied to the columns of a table to ensure the integrity and consistency of the data stored in the database. They define certain conditions that must be met for the data to be considered valid.

SQL constraints are used to specify any rules for the records in a table.
Constraints can be used to limit the type of data that can go into a table.
It ensures the accuracy and reliability of the records in the table, and
if there is any violation between the constraint and the record action,
the action is aborted. Constraints can be column level or table level.
Column level constraints apply to a column, and table-level constraints
apply to the whole table.

Here are the different types of SQL constraints:
- Not Null
- Unique
- Primary Key
- Foreign Key
- Check
- Default
- Index



1. **NOT NULL**: This constraint ensures that a column cannot have a NULL value. It enforces that the column must always contain a valid value. For example, if you have a column for a person's name, you can apply the NOT NULL constraint to ensure that every record in the table has a non-null name.

2. **UNIQUE**: The UNIQUE constraint ensures that the values in a column (or a group of columns) are unique across all the records in the table. It prevents duplicate values from being inserted into the column. For example, if you have a column for email addresses, you can apply the UNIQUE constraint to ensure that each email address is unique.

3. **PRIMARY KEY**: The PRIMARY KEY constraint uniquely identifies each record in a table. It is a combination of the NOT NULL and UNIQUE constraints. Only one PRIMARY KEY constraint can be defined per table. For example, in a table of students, you can have a primary key column called "student_id" to uniquely identify each student.

4. **FOREIGN KEY**: The FOREIGN KEY constraint establishes a relationship between two tables. It ensures that the values in a column (or a group of columns) in one table match the values in another table's primary key. It helps maintain referential integrity between related tables. For example, if you have a table for orders and another table for customers, you can use a foreign key constraint to link the customer_id column in the orders table to the primary key column in the customers table.

5. **CHECK**: The CHECK constraint allows you to specify a condition that must be true for the data in a column. It restricts the values that can be inserted or updated in the column. For example, you can use the CHECK constraint to ensure that a column for age only accepts values greater than zero.

6. **DEFAULT**: The DEFAULT constraint specifies a default value for a column when no value is explicitly provided during an insert operation. It ensures that the column always has a value, even if one is not provided. For example, you can set a default value of "Unknown" for a column representing a person's middle name.

7. **INDEX**: The INDEX constraint is not a data integrity constraint, but rather a performance optimization feature. It creates an index on one or more columns of a table, which allows for faster data retrieval when querying the table. Indexes can improve the speed of search operations but may slightly slow down insert and update operations.

These constraints help enforce data integrity, maintain relationships between tables, and improve the performance of database operations. It's important to choose the appropriate constraints based on the requirements of your database schema and the data you are working with.


---

# SQL Constraints Notes

## SQL Constraints
SQL constraints are used to specify rules for the data in a table. They ensure the accuracy and reliability of the data by enforcing certain conditions. If a data entry violates a constraint, the action is aborted. Constraints can be applied at the column level or the table level.

### Types of Constraints
1. **Not Null Constraints**
   - Ensures that a column cannot have a `NULL` value.
2. **Unique Constraints**
   - Ensures that all values in a column are unique.
3. **Primary Key**
   - Uniquely identifies each record in a table. A primary key column cannot have `NULL` values and must contain unique values.
4. **Foreign Key**
   - Ensures the referential integrity of the data in one table to match values in another table.
5. **Check Constraints**
   - Ensures that all values in a column satisfy a specific condition.
6. **Default Constraints**
   - Provides a default value for a column when none is specified.
7. **Index**
   - Improves the speed of data retrieval operations on a table.

## SQL Script-1 with Constraints

### Creating a Database and Table
To create a database and a table with `NOT NULL` constraints:
```sql
CREATE DATABASE customer;
USE customer;

CREATE TABLE student (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT
);

DESC student;

ALTER TABLE student MODIFY age INT NOT NULL;
```

### Unique Constraint
To create a table with a unique constraint on the `id` column:
```sql
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    UNIQUE(id)
);

DESC person;

INSERT INTO person VALUES (2, 'Uzair', 'Hussain', 21);
INSERT INTO person VALUES (1, 'Subhan', 'Hussain', 18);
-- The following insert will give an error due to duplicate id
-- INSERT INTO person VALUES (2, 'Uzair2', 'Hussain2', 21);

SELECT * FROM person;

ALTER TABLE person ADD UNIQUE(first_name);

ALTER TABLE person ADD CONSTRAINT uc_person UNIQUE(age, first_name);

DESC person;

ALTER TABLE person DROP INDEX uc_person;
```

### Primary Key
To create a table with a composite primary key:
```sql
CREATE TABLE person1 (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    CONSTRAINT pk_person PRIMARY KEY (id, last_name)
);

DESC person1;

ALTER TABLE person1 DROP PRIMARY KEY;

ALTER TABLE person1 ADD PRIMARY KEY(id);
```

### Dropping Tables
To drop the created tables:
```sql
DROP TABLE student;
DROP TABLE person;
DROP TABLE person1;

SHOW TABLES;
```

These notes cover the basic usage of SQL constraints to enforce rules on the data within a table, ensuring data integrity and consistency.


---

# SQL Constraints Notes

## SQL Constraints
SQL constraints are rules applied to table columns to ensure the integrity, accuracy, and reliability of data. They can be applied at the column level or table level.

### Types of Constraints
1. **Not Null Constraints**: Ensures that a column cannot have a NULL value.
2. **Unique Constraints**: Ensures that all values in a column are unique.
3. **Primary Key**: Uniquely identifies each record in a table.
4. **Foreign Key**: Ensures referential integrity by linking two tables.
5. **Check Constraints**: Ensures that all values in a column satisfy a specific condition.
6. **Default Constraints**: Sets a default value for a column when no value is specified.
7. **Index**: Improves the performance of queries.

## SQL Script

### Creating Databases and Tables

#### Create and Use Database
```sql
CREATE DATABASE customer;
USE customer;
```

#### Create `person` Table with Composite Primary Key
```sql
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    CONSTRAINT pk_person PRIMARY KEY(id, last_name)
);
```

#### Drop the `person` Table
```sql
DROP TABLE person;
```

### Unique and Primary Key Constraints

#### Create `person` Table without Primary Key
```sql
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT
);
```

#### Describe `person` Table
```sql
DESC person;
```

#### Add Primary Key on `id`
```sql
ALTER TABLE person ADD PRIMARY KEY(id);
```

#### Drop the `person` Table
```sql
DROP TABLE person;
```

#### Create `person` Table with Composite Primary Key on `id` and `age`
```sql
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT
);

ALTER TABLE person ADD CONSTRAINT pk_person PRIMARY KEY(id, age);
```

#### Describe `person` Table with Composite Primary Key
```sql
DESC person;
```

#### Drop Primary Key
```sql
ALTER TABLE person DROP PRIMARY KEY;
```

#### Drop the `person` Table
```sql
DROP TABLE person;
```

#### Show All Tables in `customer` Database
```sql
SHOW TABLES;
```

### Foreign Key Constraints

#### Create `person` Table
```sql
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    salary INT,
    PRIMARY KEY(id)
);

DESC person;
```

#### Create `department` Table with Foreign Key Constraint
```sql
CREATE TABLE department (
    id INT NOT NULL,
    department_id INT NOT NULL,
    department_name VARCHAR(25) NOT NULL,
    PRIMARY KEY(department_id),
    CONSTRAINT fk_persondepartment FOREIGN KEY(id) REFERENCES person(id)
);

DESC department;
```

#### Drop the `department` Table
```sql
DROP TABLE department;
```

#### Create `department` Table without Foreign Key
```sql
CREATE TABLE department (
    id INT NOT NULL,
    department_id INT NOT NULL,
    department_name VARCHAR(25) NOT NULL,
    PRIMARY KEY(department_id)
);

DESC department;
```

#### Add Foreign Key Constraint to `department` Table
```sql
ALTER TABLE department ADD FOREIGN KEY(id) REFERENCES person(id);
```

#### Drop the `department` and `person` Tables
```sql
DROP TABLE department;
DROP TABLE person;
```

### Check Constraints

#### Create `person` Table with Check Constraint
```sql
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    salary INT,
    PRIMARY KEY(id),
    CHECK(salary < 50000) -- Ensures salary is less than 50000
);

-- Insert records into the person table
-- The following will give an error due to salary constraint violation
-- INSERT INTO person VALUES (1, 'Uzair', 'Hussain', 21, 51000);

INSERT INTO person VALUES (1, 'Uzair', 'Hussain', 21, 15000);

-- Select all records from the person table
SELECT * FROM person;

-- Drop the person table
DROP TABLE person;
```

### Default Constraints

#### Create `person` Table with Default Constraint
```sql
CREATE TABLE person (
    id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    city_name VARCHAR(25) DEFAULT 'Hyderabad' -- Sets default value for city_name
);

DESC person;
```

#### Drop Default Constraint
```sql
ALTER TABLE person ALTER city_name DROP DEFAULT;
```

This script includes commands to create tables, insert data, apply various constraints, and manage constraints as specified.

---