USE customer;

-- Select all records from the student table
SELECT * FROM student;

/*
Creating a simple stored procedure named `get_std_info` that selects all records from the student table.
*/

CREATE PROCEDURE `get_std_info` ()
BEGIN
    SELECT * FROM student;
END;

-- Alternatively, specifying the definer explicitly
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_std_info`()
BEGIN
    SELECT * FROM student;
END;

-- Call the procedure
CALL get_std_info;

/*
Creating a parameterized procedure named `get_std_info` that selects records where the student's age is 21.
*/

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_std_info`()
BEGIN
    SELECT * FROM student WHERE student.age=21;
END;

-- Call the procedure
CALL get_std_info;

/*
Creating a parameterized procedure that accepts an age as a parameter and selects records where the student's age matches the given age.
*/

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_std_info`(IN age INT)
BEGIN
    SELECT * FROM student WHERE student.age=age;
END;

-- Call the procedure with different age values
CALL get_std_info(21);
CALL get_std_info(32);

/*
Creating a procedure named `get_std_info` that counts the number of students with age 32 and returns the count using an output parameter.
*/

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_std_info`(OUT records INT)
BEGIN
    SELECT COUNT(*) INTO records FROM student WHERE student.age=32;
END;

-- Call the procedure and store the result in a user-defined variable
CALL get_std_info(@record);
SELECT @record AS Totalrecords;

/*
Creating a procedure named `get_std_info` that accepts an INOUT parameter to store the count of students with a given age.
*/

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_std_info`(INOUT records INT, IN age INT)
BEGIN
    SELECT COUNT(*) INTO records FROM student WHERE student.age=age;
END;

-- Call the procedure with an initial value for the INOUT parameter
CALL get_std_info(@record, 21);
SELECT @record AS Totalrecords;
