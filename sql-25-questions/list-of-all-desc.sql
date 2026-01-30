use practice;

-- list students with grades A or B in descending  order of age;
select  * from student 
where  final_grade = "A" or final_grade = "B"
order by  student_age desc;