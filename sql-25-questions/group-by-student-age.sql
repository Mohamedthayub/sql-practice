use practice;


-- groupt student by age and calculate  the average age in each group;

select avg(student_age),student_age from student
group by  student_age ;

select * from student;