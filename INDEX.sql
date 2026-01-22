USE PRACTICE;

-- to know what are the index in employee table ;
SHOW INDEX FROM `EMPLOYEE`;


DROP TABLE `EMPLOYEE`;

SHOW TABLES;


/*

What is an INDEX in SQL?
👉 Simple definition:

An INDEX is a data structure that helps the database find rows faster—just like an index in a book.

📖 Book example:

Without index → read every page

With index → jump directly to the topic

Same in SQL.

*/
-- we created this table to show another index is created for pan
CREATE TABLE EMPLOYEE (
    ID INT PRIMARY KEY AUTO_INCREMENT ,
    NAME VARCHAR(30) NOT NULL,
    JOB_DESCRIPTION VARCHAR(20) DEFAULT "UNASSIGNED",
    SALARY  INT,
    PAN VARCHAR(10) UNIQUE
);


-- THIS IS HOW WE SHOULD CREATE INDEX  IN THE TABLE ;
CREATE INDEX  NAME_INDEX  ON EMPLOYEE(NAME);


-- TO DROP THE NAME INDEX IN EMPLOYEE TABLE 
ALTER TABLE `EMPLOYEE` DROP INDEX NAME_INDEX;

-- WE CAN ALSO ADD INDEX USING ALTER TABLE ;
ALTER TABLE `EMPLOYEE`  ADD INDEX (NAME);
SHOW TABLES;

SHOW INDEX FROM `EMPLOYEE`;