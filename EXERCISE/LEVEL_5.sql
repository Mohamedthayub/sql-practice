USE PRACTICE;


/*
1,00,000

🟣 LEVEL 5 — Date Functions

19️⃣ Find employees hired in 2022

20️⃣ Find employees hired in the last 2 years

21️⃣ Calculate experience (in years) of each employee
*/

SELECT * FROM `EMPLOYEE`;


- 19️⃣ Find employees hired in 2022
SELECT  * FROM `EMPLOYEE`
WHERE YEAR(`HIRE_DATE`) = 2022;


--20️⃣ Find employees hired in the last 2 years
SELECT  * FROM `EMPLOYEE`
WHERE `HIRE_DATE` > CURDATE() - INTERVAL 2 YEAR;

--21️⃣ Calculate experience (in years) of each employee
SELECT  ID,NAME,HIRE_DATE,TIMESTAMPDIFF(YEAR,HIRE_DATE, CURDATE()) AS YEARS_OF_EXPERIENCE FROM `EMPLOYEE`;