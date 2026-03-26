USE PRACTICE;


CREATE TABLE EMPLOYEE(
    EMPLOYEE_ID INT ,
    EMPLOYEE_NAME VARCHAR(20),
    JOB_DESCRIPTION VARCHAR(20),
    SALARY INT
);

/*
what is where clause ? 

The SQL WHERE clause is used to filter records and extract only those rows that fulfill a specified condition or set of conditions. It functions as a "gatekeeper" for data, ensuring that only the relevant data is returned or modified, rather than the entire table. 

*/
INSERT INTO `EMPLOYEE` VALUES
(1, 'Venkatesh', 'Frontend Dev', 50000),
(2, 'Ravi', 'Backend Dev', 60000),
(3, 'Arun', 'Fullstack Dev', 70000),
(4, 'Karthik', 'UI Designer', 45000),
(5, 'Suresh', 'QA Engineer', 40000),
(6, 'Priya', 'HR Manager', 55000),
(7, 'Anjali', 'Data Analyst', 65000),
(8, 'Manoj', 'DevOps Eng', 75000),
(9, 'Divya', 'Product Mgr', 80000),
(10, 'Rahul', 'Support Eng', 35000);


SELECT  * FROM `EMPLOYEE`;

SELECT * FROM `EMPLOYEE`
WHERE `SALARY` > 50000; -- FILTER THE ROW IS GREATER  THAN 50000;

SELECT * FROM `EMPLOYEE`
WHERE `SALARY` IN (50000 ,60000);  --  The SQL IN keyword is a logical operator used in the WHERE clause to check if a specified column's value matches any value within a provided list or the results of a subquery

SELECT * FROM `EMPLOYEE`
WHERE `JOB_DESCRIPTION` LIKE  'B%';  --  TO GET STARTING CHARACTER THE  JOB DESCRIPTION ;

SELECT  * FROM `EMPLOYEE`
WHERE `JOB_DESCRIPTION` LIKE  '%R%'; --  TO GET THE MIDDLE OF THE NAME  IN JOB DESCRIPTION ;;S



SELECT * FROM `EMPLOYEE` 
WHERE `EMPLOYEE_NAME` LIKE '__r%'; -- HERE WE SKIP THE FIRST TWO LETTER THAN WE FILTER OUT IT USING LIKE  KEYWORD; 
SELECT * FROM `EMPLOYEE`
WHERE `EMPLOYEE_NAME` LIKE '%A'; -- TO GET THE LAST  LETTER OF THE EMPLOYEE NAME;


UPDATE `EMPLOYEE` SET `JOB_DESCRIPTION` = 'HR MANAGER'
WHERE   `JOB_DESCRIPTION` = 'SUPPORT ENG';
-- HERE WE UPDATE THE JOB DESCRIPTION USING USING UPDATE KEYWORD  
UPDATE `EMPLOYEE` SET  `JOB_DESCRIPTION` = 'SUPPORT ENG'
WHERE  `JOB_DESCRIPTION` = 'HR MANAGER';  -- HERE ALSO WE UPDATE THE DATA  USING UPDATE AND WHERE KEYWORD;


DELETE FROM  `EMPLOYEE` WHERE `EMPLOYEE_ID` = 8; -- DELETE THE TABLE ITEM USING DELETE KEYWORD 
ALTER TABLE  `EMPLOYEE` ADD PRIMARY KEY (`EMPLOYEE_ID`); --  THIS IS  HOW WE ADD CONSTRAINT IN EXISTING TABLE;
SELECT * FROM `EMPLOYEE`;
DESCRIBE EMPLOYEE;


