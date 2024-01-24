--schema
Create table If Not Exists Students (student_id int, student_name varchar(20))
Create table If Not Exists Subjects (subject_name varchar(20))
Create table If Not Exists Examinations (student_id int, subject_name varchar(20))
Truncate table Students
insert into Students (student_id, student_name) values ('1', 'Alice')
insert into Students (student_id, student_name) values ('2', 'Bob')
insert into Students (student_id, student_name) values ('13', 'John')
insert into Students (student_id, student_name) values ('6', 'Alex')
Truncate table Subjects
insert into Subjects (subject_name) values ('Math')
insert into Subjects (subject_name) values ('Physics')
insert into Subjects (subject_name) values ('Programming')
Truncate table Examinations
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Programming')
insert into Examinations (student_id, subject_name) values ('2', 'Programming')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Programming')
insert into Examinations (student_id, subject_name) values ('13', 'Physics')
insert into Examinations (student_id, subject_name) values ('2', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Math')


--solution
select S.student_id, S.student_name, Sub.subject_name, count(E.subject_name) as attended_exams 
from Students S
cross join Subjects Sub
left join Examinations E
on S.student_id = E.student_id 
and Sub.subject_name = E.subject_name
GROUP BY S.student_id, S.student_name, Sub.subject_name
ORDER BY S.student_id, Sub.subject_name;

--CROSS JOIN: This creates a Cartesian product of Students and Subjects, combining every student with every subject.
--LEFT JOIN: This is used to include all combinations of students and subjects, 
--even if there is no corresponding entry in the Examinations table. This ensures that every student is included for every subject.
--COUNT(e.subject_name): This counts the number of times each student attended each exam. 
--The use of COUNT with a specific column ensures that it only counts non-null values (i.e., instances where a student attended an exam).
--GROUP BY: This groups the results by student_id, student_name, and subject_name, so the COUNT function is applied for each unique combination.
--ORDER BY: This orders the result set by student_id and subject_name.




