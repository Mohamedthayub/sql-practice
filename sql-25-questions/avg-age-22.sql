use practice;

-- find grades with an average age greater than 22;

select avg(student_age),final_grade from student 
group by final_grade
having avg(student_age) > 21;