use PRACTICE;

show tables;


select * from employees;

select * from departments;

-- Exercise 1: Display all employees along with their department names using INNER JOIN.
select e.employee_name,d.department_name from employees as e
inner join departments as d  on e.department_id  = d.department_id;

-- Display all employees and their department names, including employees without departments.

select e.employee_name,d.department_name from  employees as e 
left join departments as d on e.department_id =  d.department_id;

-- Exercise 3: Display all departments and their employees, including departments without employees.

select e.employee_name,d.department_name from employees as e 
right join departments as d on e.department_id = d.department_id

-- Exercise 4: Find employees who don't have a matching department.
select e.employee_name,d.department_name from employees  as e 
left join  departments  as d on e.department_id =  d.department_id
where d.department_name is null;
--Exercise 5: Display employee names and salaries for employees working in the Engineering department.

select e.employee_name,e.salary from employees as e 
inner join  departments as d on e.department_id = d.department_id
where d.department_name = 'Engineering';
