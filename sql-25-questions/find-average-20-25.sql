use practice;


--  find grades with an average age between 20 and 25;
select avg(student_age),final_grade from student
group by final_grade 
having  avg(student_age) between  20 and 25;
describe student;