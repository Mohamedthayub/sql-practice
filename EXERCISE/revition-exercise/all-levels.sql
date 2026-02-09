USE PRACTICE;

-- LEVEL 1 QUESTIONS
SELECT * FROM `EMPLOYEE`;
-- 1️⃣ Display all employees

SELECT NAME,SALARY FROM `EMPLOYEE`;
-- 2️⃣ Display only NAME and SALARY

SELECT * FROM  `EMPLOYEE`
WHERE  SALARY > 40000;
-- 3️⃣ Show employees ';whose salary is greater than 40,000

SELECT  * FROM `EMPLOYEE` 
WHERE `JOB_DESCRIPTION` = 'QA ENGINEER';
-- 4️⃣ Find employees who are QA ENGINEER

SELECT  * FROM `EMPLOYEE` 
WHERE `HIRE_DATE` = '2020-01-01';
--5️⃣ Show employees hired after 2020-01-01


-- LEVEL 2;

SELECT * FROM `EMPLOYEE`
ORDER BY `SALARY` DESC;
-- 6️⃣ Display employees sorted by salary descending

SELECT * FROM `EMPLOYEE`
ORDER BY `SALARY` DESC LIMIT 3;
-- 7️⃣ Show top 3 highest paid employees

SELECT  * FROM `EMPLOYEE`
WHERE `NAME`  LIKE "A%";
-- 8️⃣ Display employees whose name starts with ‘A’

SELECT  * FROM `EMPLOYEE`
WHERE  `SALARY` BETWEEN  30000 AND 60000;

SELECT * FROM `EMPLOYEE` WHERE `SALARY` > 30000 AND `SALARY` < 60000;
-- 9️⃣ Show employees whose salary is between 30,000 and 60,000
 

SELECT  DISTINCT `JOB_DESCRIPTION` FROM `EMPLOYEE`;
-- 10️⃣ Display unique job descriptions


-- LEVEL 3


SELECT COUNT(*) AS TOTAL_EMPLOYEES FROM `EMPLOYEE`;
-- 11️⃣ Count total number of employees

SELECT MIN(SALARY),MAX(`SALARY`) FROM `EMPLOYEE`;
-- 12️⃣ Find maximum and minimum salary

SELECT AVG(SALARY) AS AVERAGE_SALARY FROM `EMPLOYEE`;
-- 13️⃣ Find average salary of employees

SELECT COUNT(*), `JOB_DESCRIPTION`FROM `EMPLOYEE` 
GROUP BY `JOB_DESCRIPTION`;
-- 14️⃣ Count employees in each job role

SELECT SUM(SALARY),`JOB_DESCRIPTION` FROM `EMPLOYEE`
GROUP BY `JOB_DESCRIPTION`;
-- 15️⃣ Find total salary paid for each job role
