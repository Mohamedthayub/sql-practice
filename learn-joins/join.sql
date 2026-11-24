use PRACTICE;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    salary INT,
    manager_id INT
);

INSERT INTO employees
(employee_id, employee_name, department_id, salary, manager_id)
VALUES
(1, 'Mohamed', 101, 50000, NULL),
(2, 'Ahmed', 102, 40000, 1),
(3, 'Rahman', 101, 45000, 1),
(4, 'Ibrahim', 103, 35000, 2),
(5, 'Salman', NULL, 30000, 2),
(6, 'Fathima', 105, 42000, 1);


show tables;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
)

INSERT INTO departments
(department_id, department_name)
VALUES
(101, 'Engineering'),
(102, 'Marketing'),
(103, 'HR'),
(104, 'Finance');


-- show tables;

select * from employees;
select * from departments;
-- This is the most commonly used JOIN.Definition: INNER JOIN returns only the rows that have matching values in both tables.
select e.employee_name,d.department_name from employees as e 
inner join  departments  as d on e.department_id = d.department_id;

-- Left Join  
select e.employee_name,d.department_name from employees as e 
left join departments as d on   e.department_id = d.department_id;



-- right join which employee has no department
select e.employee_name,d.department_name from employees as e 
right join departments  as d  on e.department_id = d.department_id;


select e.employee_name,d.department_name from employees as e 
full  join departments  as d  on e.department_id = d.department_id;
