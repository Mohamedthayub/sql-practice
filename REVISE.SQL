USE PRACTICE;

SELECT  * FROM `EMPLOYEE`;



-- 19️⃣ Find employees hired in 2022
SELECT  * FROM `EMPLOYEE`
WHERE YEAR(`HIRE_DATE`) = 2022;


--20️⃣ Find employees hired in the last 2 years
SELECT  * FROM `EMPLOYEE`
WHERE `HIRE_DATE` > CURDATE() - INTERVAL 2 YEAR;

--21️⃣ Calculate experience (in years) of each employee
SELECT DATEDIFF(HIRE_DATE - CURDATE()) FROM `EMPLOYEE`;