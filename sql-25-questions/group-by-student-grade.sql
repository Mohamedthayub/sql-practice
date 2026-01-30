use  practice;

-- count  how many students in each group;

select  COUNT(*),final_grade as number_of_studentsp from student
GROUP BY final_grade 
order by  final_grade asc

select * from student;