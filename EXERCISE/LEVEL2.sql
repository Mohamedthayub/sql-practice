/*
🟡 LEVEL 2 — Filtering & Sorting

6️⃣ Display employees sorted by salary descending

7️⃣ Show top 3 highest paid employees

8️⃣ Display employees whose name starts with ‘A’

9️⃣ Show employees whose salary is between 30,000 and 60,000

10️⃣ Display unique job descriptions
*/
USE PRACTICE;
-- 6️⃣ Display employees sorted by salary descending
SELECT * FROM `EMPLOYEE`
ORDER BY `SALARY` DESC;

-- 7️⃣ Show top 3 highest paid employees
SELECT  * FROM `EMPLOYEE`
ORDER BY  `SALARY` DESC
LIMIT 3;

-- 8️⃣ Display employees whose name starts with ‘A’
SELECT * FROM `EMPLOYEE`
WHERE NAME LIKE "A%";


-- 9️⃣ Show employees whose salary is between 30,000 and 60,000
SELECT  * FROM `EMPLOYEE`
WHERE `SALARY` > 30000 AND `SALARY` <  90000;

-- 10️⃣ Display unique job descriptions
SELECT DISTINCT `JOB_DESCRIPTION` FROM `EMPLOYEE`;

