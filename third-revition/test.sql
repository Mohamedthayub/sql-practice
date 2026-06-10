USE PRACTICE;


CREATE TABLE EMPLOYEE (
    EMPLOYEE_ID INT,
    EMPLOYEE_NAME  VARCHAR(20),
    DEPARTMENT VARCHAR(20),
    SALARY INT ,
    HIRE_DATA DATE
);


/*
Write queries to:

Find all employees.
Find unique departments.
Find employees with salary > 50,000.
Sort employees by salary descending.
Get top 5 highest-paid employees.
*/

-- Find all employees.
SELECT * FROM `EMPLOYEE`;

--Find unique departments.
SELECT DISTINCT `DEPARTMENT` FROM `EMPLOYEE`;


--Find employees with salary > 50,000.
SELECT SALARY FROM `EMPLOYEE`
WHERE  `SALARY` > 50000;


-- Sort employees by salary descending.

SELECT  SALARY FROM `EMPLOYEE`
ORDER BY `SALARY` DESC;


-- Get top 5 highest-paid employees.
SELECT  SALARY FROM `EMPLOYEE`
ORDER BY `SALARY` DESC LIMIT 5;
