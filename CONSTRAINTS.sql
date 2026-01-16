USE PRACTICE;
/*


SQL Constraints
SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be column level or table level. Column level constraints apply to a column, and table level constraints apply to the whole table.

The following constraints are commonly used in SQL:

NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly

*/



CREATE  TABLE EMPLOYEE (
    ID INT  PRIMARY KEY AUTO_INCREMENT, --
    NAME VARCHAR(30) NOT NULL,  -- Ensures that a column cannot have a NULL value
    JOB_DESCRIPTION VARCHAR(30) DEFAULT  "UNASSIGNED",  -- Sets a default value for a column if no value is specified
    SALARY INT ,
    PAN_NUMBER VARCHAR(10) UNIQUE,  --  Ensures that all values in a column are different
    CHECK(SALARY > 10000 ) -- Ensures that the values in a column satisfies a specific condition
);
-- THE CREATED WITH CONSTRAINTS;

-- INSERT INTO `EMPLOYEE` (`NAME`, `SALARY`)   VALUES
-- ("BUYATH",20000);

INSERT INTO `EMPLOYEE` (NAME, `JOB_DESCRIPTION`, `SALARY`,`PAN_NUMBER`) VALUES
("MOHIDEE","SECURITY ENGINEER", 13000,12347);
 --  WE INSERT SPECIFIC VALUES  TO EMPLOYEE TABLE;

DELETE FROM `EMPLOYEE` WHERE ID  = 10;
-- WE DELETE TABLE ITEM USING ID;
CREATE TABLE EMPLOYEE (
    ID INT PRIMARY KEY,
    NAME VARCHAR(20),
    JOB_DESCRIPTION VARCHAR(30),
    SALARY INT 
);
-- CREATED EMPLOYEE WITHOUT ANY CONSTRAINTS;

SELECT * FROM `EMPLOYEE`;
DESCRIBE EMPLOYEE;

-- TO ADD NOT NULL CONSTRAINT IN EXISTING EMPLOYEE TABLE;
ALTER  TABLE `EMPLOYEE` MODIFY NAME VARCHAR(20) NOT NULL;

-- TO DROP NOT NULL CONSTRAINT IN EXISTING EMPLOYEE TABLE;
ALTER TABLE `EMPLOYEE`  MODIFY  NAME  VARCHAR(20);


-- TO ADD DEFAULT CONSTRAINT IN EXISTING EMPLOYEE TABLE ;
ALTER TABLE  `EMPLOYEE` ALTER  JOB_DESCRIPTION SET DEFAULT  "UNASSINGNED";

-- TO DROP  DEFAULT CONSTRAINT IN EXISTING EMPLOYEE TABLE;
ALTER TABLE `EMPLOYEE` ALTER JOB_DESCRIPTION  DROP DEFAULT;

-- TO ADD CHECK CONSTRAINT IN EXISTING EMPLOYEE TABLE;
ALTER  TABLE `EMPLOYEE` ADD CONSTRAINT  CHECK_SALARY  CHECK ( SALARY > 10000);

--  TO DROP CHECK CONSTRAINT IN EXISTING EMPLOYEE TABLE
ALTER TABLE `EMPLOYEE` DROP CHECK  CHECK_SALARY;

-- HERE THE CHECK SALARY IS CONSTRAINT NAME ;

