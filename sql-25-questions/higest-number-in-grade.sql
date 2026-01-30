use practice;

-- find the grade with highest number of the student
select count(*),final_grade from student
group by final_grade
order by final_grade asc limit 1;