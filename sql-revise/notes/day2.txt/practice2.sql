USE PRACTICE;

-- here we are going to learn about distinct and orderBy;

/*
what is distinct keyword ? 
The SQL DISTINCT keyword is used with the SELECT statement to retrieve only unique (non-duplicate) values from the specified column(s) in a table. It filters out redundant rows from the query result set, ensuring that every returned row is unique based on the combination of all selected columns

what is orderBy ? 

The SQL ORDER BY keyword is used to sort the result set of a SELECT query in a specific sequence based on the values in one or more columns. This is essential for organizing data in a meaningful and readable way
*/
SELECT * FROM `EMPLOYEE`
ORDER BY SALARY DESC;
-- ORDER BY USE TO  SORT THE DATA
SELECT * FROM `EMPLOYEE`
ORDER BY `JOB_DESCRIPTION` DESC;


SELECT * FROM `EMPLOYEE`
WHERE `JOB_DESCRIPTION` = 'SOFTWARE ENGINEER'
ORDER BY `JOB_DESCRIPTION`;
-- WE USE ORDER BY INSIDE WHERE CLAUSE . FIRST IT WILL FILTER THAN SORT WHAT WE FILTER ;

SELECT DISTINCT JOB_DESCRIPTION FROM `EMPLOYEE`;
-- DISTINCT KEYWORD PRINT UNIQUE  JOB DESCRIPTION NOT REPEATED ;

SELECT * FROM `EMPLOYEE`;



-- CUSTOM ORDERBY 
SELECT * FROM `EMPLOYEE`
ORDER BY 
    CASE 
    WHEN`JOB_DESCRIPTION` = 'FRONTED DEV' THEN 1
    WHEN `JOB_DESCRIPTION`= 'BACKEND DEV' THEN 1
    WHEN `JOB_DESCRIPTION`= 'QA ENGINEER' THEN 1
    WHEN `JOB_DESCRIPTION`= 'SOFTWARE ENGINEER' THEN 1
    ELSE 2
    END
-- THIS IS HOW WE SORT THE ROW USING CUSTOM ORDER BY;