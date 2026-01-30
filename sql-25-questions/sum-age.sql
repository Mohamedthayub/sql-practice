use practice;

-- calculate student age if their grade is A or B
select SUM(student_age)   from student
where final_grade = "A" or final_grade = "B"