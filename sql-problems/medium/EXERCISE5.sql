USE PRACTICE;

-- 5️⃣ Find employees hired in the last 3 years;

SELECT * FROM `EMPLOYEE`
WHERE  `HIRE_DATE`  >=  CURDATE()  - INTERVAL 3 YEAR ;

