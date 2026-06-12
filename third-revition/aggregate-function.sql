USE PRACTICE;

/*
Exercise
Count employees.
Average salary per department.
Highest salary in each department.
Departments having more than 5 employees.
Total salary paid by each department.

*/


SHOW TABLES;
-- Count employees.
SELECT COUNT(*) AS EMPLOYEE_COUNT FROM `EMPLOYEE`;

-- Average salary per department.
SELECT `DEPARTMENT`, AVG(`SALARY`) AS AVERAGE_SALARY FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`; 

-- Highest salary in each department.
SELECT MAX(`SALARY`),`DEPARTMENT` FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`;
-- Departments having more than 5 employees.
SELECT COUNT(*) AS DEPARTMENT_EMPLOYEE_COUNT,`DEPARTMENT` FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`
HAVING COUNT(`DEPARTMENT`) > 5;


-- Total salary paid by each department.
SELECT SUM(SALARY) AS TOTAL_SALARY, `DEPARTMENT` FROM `EMPLOYEE`
GROUP BY `DEPARTMENT` ;
