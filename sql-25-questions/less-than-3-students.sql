use practice;

-- find grades with fewer than 3 students;

/* 
the question is which group have fewer than 3. i mean  which group have greater than three students
*/

select count(*),final_grade from student
group by final_grade
having count(final_grade) > 3;