USE PRACTICE;

--- FILTERING DATA 


/*
2. Filtering Data (30 mins)

Revise:

AND
OR
NOT
BETWEEN
IN
LIKE
IS NULL
Exercise
Employees earning between 40k and 70k.
Employees from HR or Finance.
Names starting with 'A'.
Employees with no department assigned.
Employees not in IT.
*/
-- Employees earning between 40k and 70k.
SELECT * FROM `EMPLOYEE`
WHERE  `SALARY` > 40000 AND `SALARY` < 70000;

-- Employees from HR or Finance.
SELECT * FROM `EMPLOYEE`
WHERE `DEPARTMENT` = 'HR' OR `DEPARTMENT` = 'Finance';

-- Names starting with 'A'.
SELECT * FROM `EMPLOYEE` 
WHERE `EMPLOYEE_NAME` LIKE 'A%';

-- Employees with no department assigned.
SELECT  * FROM `EMPLOYEE`
WHERE `DEPARTMENT` IS NULL;

-- Employees not in IT.
SELECT * FROM `EMPLOYEE`
WHERE `DEPARTMENT` NOT IN ('IT');