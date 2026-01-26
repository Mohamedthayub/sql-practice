USE PRACTICE;


/*
🔵 LEVEL 4 — GROUP BY & HAVING

16️⃣ Show job roles having more than 2 employees

17️⃣ Display departments whose average salary > 50,000

18️⃣ Find job roles where total salary > 1,00,000

*/

SELECT  JOB_DESCRIPTION , COUNT(*) AS TOTAL_EMPLOYEES  FROM `EMPLOYEE`  GROUP BY `JOB_DESCRIPTION`  HAVING  COUNT(*) > 2 ;

-- 16️⃣ Show job roles having more than 2 employees

SELECT `JOB_DESCRIPTION`,AVG(`SALARY`) AS  AVERAGE_SALARY FROM `EMPLOYEE` GROUP BY `JOB_DESCRIPTION` HAVING AVG(`SALARY`) > 50000;

-- 17️⃣ Display departments whose average salary > 50,000

SELECT `JOB_DESCRIPTION`, SUM(`SALARY`) AS TOTAL_SALARY FROM `EMPLOYEE` GROUP BY `JOB_DESCRIPTION` HAVING SUM(`SALARY`) > 100000;
-- 18️⃣ Find job roles where total salary > 1,00,000
 

SELECT * FROM `EMPLOYEE`;

-- TO SEE THE DATA IN THE EMPLOYEE TABLE


