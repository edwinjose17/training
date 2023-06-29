create table student(
student_id int primary key,
student_name nvarchar(50),
);
select * from student

create table student_mark(
student_id int primary key,
marks nvarchar(50),
department nvarchar(50),
);
select * from student_mark

insert into student(student_id,student_name)
values (101,'Edwin'),
(102,'Arthur'),
(103,'John');

select * from student

insert into student_mark(student_id,marks,department)
values (101,72,'CSE'),
(102,89,'CSE'),
(103,92,'ECE'),
(104,87,'ECE'),
(105,80,'ME');

select * from student_mark

select *
from student
inner join student_mark on student.student_id = student_mark.student_id;

select *
from student
left join student_mark on student.student_id = student_mark.student_id;


select *
from student
right join student_mark on student.student_id = student_mark.student_id;

select *
from student
full outer join student_mark ON student.student_id = student_mark.student_id;

select s1.student_id, s1.student_name, s2.student_id as advisor_id, s2.student_name as advisor_name
from student s1
inner join student s2 on s1.student_id <> s2.student_id;








