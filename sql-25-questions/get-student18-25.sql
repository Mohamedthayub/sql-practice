use practice;


-- retrieve sutudent age between 18  and 25;
select * from student
where student_age > 18 and  student_age < 25;

-- using between keyword to solve this problem
select * from student 
where student_age BETWEEN  18 and  25;



