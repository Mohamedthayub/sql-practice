use practice;


-- rename the gradep

alter table student rename column  grade  to final_grade;

select * from student;