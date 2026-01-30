use practice ;

-- retrieve students name "Arun" or "priya";

select * from student
where student_name = "Arun" or student_name = "Priya";



select * from student where student_name in ("Arun","Priya");
-- to solve this problem by in keyword;

select * from student;