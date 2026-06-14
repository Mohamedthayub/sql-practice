USE PRACTICE;


SHOW TABLES;

/*
Task 1

Find all employees hired after '2024-01-01'.
*/

SELECT * FROM `EMPLOYEE`
WHERE  `HIRE_DATA` >  '2024-01-01';

/*
Task 2

Find employees whose salary is between 45,000 and 80,000.
*/
SELECT * FROM  `EMPLOYEE` 
WHERE `SALARY` BETWEEN 45000 AND 80000


/*
Task 3

Show all unique departments
*/
SELECT DISTINCT `DEPARTMENT` FROM `EMPLOYEE`;

/*
Task 4

Find employees whose names contain the letter 'a'.
*/

SELECT * FROM `EMPLOYEE` WHERE  `EMPLOYEE_NAME`  LIKE  "%a%";

/*
Task 5

Display the top 3 highest-paid employees.
*/

SELECT  * FROM `EMPLOYEE`
ORDER BY  `SALARY` DESC LIMIT 3;


/*
Task 6

Count the total number of employees.
*/
SELECT COUNT(*) AS TOTAL_NO_OF_EMPLOYEES FROM `EMPLOYEE`;

/*
Task 7

Find the average salary of all employees.
*/
SELECT AVG(`SALARY`) FROM `EMPLOYEE`


/*
Task 8

Find the minimum and maximum salary.
*/
SELECT MAX(SALARY) AS  MAXIMUM_SALARY , MIN(`SALARY`) AS MINIMUM_SALARY FROM `EMPLOYEE`;


/*
Task 9

Find the number of employees in each department.
*/

SELECT  COUNT(*),`DEPARTMENT` FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`;

/*
Task 10

Find the total salary paid by each department.
*/

SELECT SUM(SALARY),`DEPARTMENT` FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`;


/*
Task 11

Find departments having more than 3 employees.
*/

SELECT COUNT(*),`DEPARTMENT` FROM `EMPLOYEE`
GROUP BY  `DEPARTMENT` 
HAVING COUNT(*) > 3;


/*
Task 12
Find departments where the average salary is greater than 60,000.
*/
SELECT AVG(SALARY),`DEPARTMENT` FROM  `EMPLOYEE` 
GROUP BY `DEPARTMENT` 
HAVING AVG(`SALARY`) > 60000;


/*Task 13

Show:

Department | Employee Count | Total Salary

Example:

IT        5      320000
HR        3      180000

*/

SELECT DEPARTMENT AS DEPARTMENT_NAME,COUNT(*) AS EMPLOYEE_COUNT ,SUM(`SALARY`) AS TOTAL_SALARY FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`;

/*
Task 14

Show:

Department | Average Salary | Highest Salary
*/
SELECT DEPARTMENT AS DEPARTMENT_NAME,AVG(SALARY) AS AVERAGE_SALARY,MAX(SALARY) AS HIGHEST_SALARY FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`;

/*
Task 15

Find the department spending the most money on salaries.

Hint: Use aggregate functions with sorting.
*/

SELECT `DEPARTMENT`,SUM(SALARY) AS TOTAL_SALARY  FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`
ORDER BY TOTAL_SALARY DESC LIMIT 1;

/*
Task 16

Find the highest-paid employee in the company.
*/

SELECT  EMPLOYEE_NAME ,`SALARY` FROM `EMPLOYEE`
ORDER BY `SALARY` DESC LIMIT 1;


/*
Task 17

Find the lowest-paid employee in the company.
*/
SELECT  EMPLOYEE_NAME ,`SALARY` FROM `EMPLOYEE`
ORDER BY `SALARY` ASC LIMIT 1;



/*
Task 18

Find employees whose salary is exactly equal to the company average salary.

(You may skip this one for now if you haven't learned subqueries.)

*/


/*
Task 19

Find departments that have exactly 2 employees.
*/
SELECT `DEPARTMENT`,COUNT(*) FROM `EMPLOYEE`
GROUP BY `DEPARTMENT`
HAVING COUNT(*)  = 2; 


/*
Task 20

Show only departments where the total salary exceeds 200,000.
*/
SELECT SUM(SALARY),`DEPARTMENT` FROM `EMPLOYEE` 
GROUP BY `DEPARTMENT`
HAVING SUM(`SALARY`) > 200000;

/*
First of all, this is impressive.

You didn't just solve a few queries—you solved 20 SQL tasks in one sitting. That's exactly how SQL becomes second nature.

If I were interviewing you for a junior backend role, I would conclude:

"This person is definitely comfortable with SQL fundamentals and aggregates. The remaining gaps are mostly about interpreting business questions correctly."

Overall Score
Section	Score
Basic Queries	10/10
Filtering	10/10
Aggregate Functions	10/10
GROUP BY & HAVING	10/10
Reading Business Questions	8/10
Real-world SQL Thinking	7.5/10
Overall: 9/10

You are ready to move on to Joins.
*/