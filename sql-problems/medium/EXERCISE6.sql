USE PRACTICE;

/*
6️⃣ Display employees whose salary is above the average salary
What this question really means

You want to:

Calculate the average salary of all employees

Then compare each employee’s salary with that average

Show only those earning more than normal

Real-world meaning

“Who are our above-average earners?”
*/

SELECT *
FROM EMPLOYEE
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EMPLOYEE
);
