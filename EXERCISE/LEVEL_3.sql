
/*
descriptions

🟠 LEVEL 3 — Aggregate Functions

11️⃣ Count total number of employees

12️⃣ Find maximum and minimum salary

13️⃣ Find average salary of employees

14️⃣ Count employees in each job role

15️⃣ Find total salary paid for each job role

*/
USE PRACTICE;


-- 11️⃣ Count total number of employees
SELECT  COUNT(*) AS TOTAL_EMPLOYEES FROM `EMPLOYEE`;


-- 12️⃣ Find maximum and minimum salary
SELECT MAX(`SALARY`) FROM `EMPLOYEE`; 
SELECT MIN(`SALARY`) FROM `EMPLOYEE`;


-- 13️⃣ Find average salary of employees
SELECT AVG(`SALARY`) FROM `EMPLOYEE`; 

--14️⃣ Count employees in each job role
SELECT  COUNT(`JOB_DESCRIPTION`) AS COUNT_EACH_ROLE  FROM `EMPLOYEE`
GROUP BY `JOB_DESCRIPTION`;

-- this optimize query was  given by chatgpt;
SELECT 
    JOB_DESCRIPTION,
    COUNT(*) AS COUNT_EACH_ROLE
FROM EMPLOYEE
GROUP BY JOB_DESCRIPTION;



-- 15️⃣ Find total salary paid for each job role
SELECT  SUM(`SALARY`) AS TOTAL_SALARY_EACH_ROLE  FROM `EMPLOYEE`
GROUP BY `JOB_DESCRIPTION`;

-- this optimize query was given by chatgpt 
SELECT 
    JOB_DESCRIPTION,
    SUM(SALARY) AS TOTAL_SALARY_EACH_ROLE
FROM EMPLOYEE
GROUP BY JOB_DESCRIPTION;
