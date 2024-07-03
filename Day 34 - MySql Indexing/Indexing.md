Here are the notes on SQL Indexes with explanations and examples from the provided script:

### SQL Index - MySQL Indexes

**Definition:**
- **Indexes** in SQL are used to speed up the retrieval of data from a database table. An index creates an entry for each value and makes the search process faster.
- **CREATE INDEX** statement is used to create indexes on tables.
- **Purpose:** Indexes are used to speed up query performance by allowing the database to find data more quickly than it would be able to otherwise.

**Important Considerations:**
- **Visibility:** Users cannot see the indexes directly; they are used internally by the database to improve performance.
- **Update Overhead:** Updating tables with indexes can be slower because the indexes themselves need to be updated. Therefore, it's recommended to only create indexes on columns that are frequently searched.

### Example Script Breakdown

1. **Using the Database and Showing Tables:**
   ```sql
   USE customer;
   SHOW TABLES;
   SELECT * FROM person;
   ```

2. **Creating an Index on `city_name` Column in `person` Table:**
   ```sql
   CREATE INDEX index_city_name ON person(city_name);
   DESC person;
   ```

3. **Showing Tables Again:**
   ```sql
   SHOW TABLES;
   ```

4. **Creating a New Table `student` and Adding Indexes:**
   ```sql
   CREATE TABLE student (
       id INT NOT NULL,
       first_name VARCHAR(25),
       last_name VARCHAR(25),
       age INT
   );

   -- Creating an index on the `age` column
   CREATE INDEX index_age ON student(age);

   -- Creating a composite index on `age` and `first_name` columns
   CREATE INDEX index_age_first_name ON student(age, first_name);

   -- Describing the `student` table to see indexes
   DESC student;
   ```

5. **Dropping Indexes from `student` Table:**
   ```sql
   -- Dropping the composite index
   ALTER TABLE student DROP INDEX index_age_first_name;

   -- Dropping the index on `age`
   ALTER TABLE student DROP INDEX index_age;

   -- Describing the `student` table again to see the changes
   DESC student;
   ```

### Summary

**Creating an Index:**
- Use the `CREATE INDEX` statement to create an index on one or more columns.
- Example: 
  ```sql
  CREATE INDEX index_name ON table_name(column_name);
  ```

**Viewing Table Structure:**
- Use the `DESC` command to describe the table structure and see if indexes are applied.
- Example:
  ```sql
  DESC table_name;
  ```

**Dropping an Index:**
- Use the `ALTER TABLE` statement to drop an index.
- Example:
  ```sql
  ALTER TABLE table_name DROP INDEX index_name;
  ```

**Considerations:**
- Create indexes on columns that are frequently used in WHERE clauses or as part of joins.
- Be cautious with indexes on tables that undergo frequent insert/update operations as it can slow down these operations.

By following these guidelines, you can efficiently use indexes to improve the performance of your SQL queries while balancing the trade-offs involved in maintaining indexes.