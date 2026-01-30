use practice;


-- retrieve  students with grades A or B and aged 20 or older;
select * from student
where ((final_grade = "A" or final_grade = "B") and  student_age >= 20);

select * from student;

