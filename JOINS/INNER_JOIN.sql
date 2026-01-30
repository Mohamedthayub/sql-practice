USE PRACTICE;

CREATE TABLE DEPARTMENT (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50)
);

CREATE TABLE EMPLOYEE(
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    DEPARTMENT_ID INT,
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT (ID)
);

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
