USE PRACTICE;

SHOW TABLES;

/*

🔥 Behavior comparison
Action	What happens
RESTRICT	❌ Delete blocked
CASCADE	🗑 Parent + children deleted
SET NULL	👤 Child stays, FK becomes NULL
SET DEFAULT	FK set to default
NO ACTION	Same as restrict
*/


CREATE TABLE DEPARTMENT(
    DEPARTMENT_ID  INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(50) 
);
CREATE TABLE EMPLOYEE(
    ID INT  PRIMARY KEY,
    NAME VARCHAR(50),
    DEPARTMENT_ID INT,
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT (DEPARTMENT_ID) 
    ON DELETE CASCADE -- THIS LINE  REFERS THE DEPARTMENT TABLE 
);

-- 

-- WHAT WE DO HERE WHAT SHOULD HAPPEN IN EMPLOYEE TABLE WHEN DELETE THE DEPARTMENT TABLE  ;

INSERT INTO DEPARTMENT VALUES
(1, 'Engineering'),
(2, 'Human Resources'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'IT Support');


INSERT INTO EMPLOYEE VALUES
(1, 'Ravi', 1),
(2, 'Anita', 2),
(3, 'Kumar', 1),
(4, 'Priya', 3),
(5, 'Suresh', 2),
(6, 'Meena', 4),
(7, 'Arjun', 3),
(8, 'Divya', 5),
(9, 'Rahul', 4),
(10, 'Sneha', 1);

SHOW TABLES;

DELETE FROM `DEPARTMENT`
WHERE `DEPARTMENT_ID`   = 1;

SELECT * FROM  `DEPARTMENT`;

SELECT * FROM `EMPLOYEE`;




