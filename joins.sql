
-- creating database 

drop database lms;
create database lms;

create table department (dept_id int, dept_name varchar(max),depart_sections varchar (50));

insert into department values (111,'computer scince','5');
insert into department values (222,'maths','2');
insert into department values (333,'bio','4');
insert into department values (444,'physics','1');
insert into department values (555,'ir','2');
insert into department values (666,'media','2');
insert into department values (777,'education','3');

-- creating table for student, teacher and courses 
drop table student;
 create table student (std_id int identity(5520,1), std_name varchar(50), std_section varchar(50), course_id int, dept_id int);

 -- inserting data into table 

 insert into student values ('muhamamd','se',98,111); 
 insert into student values ('beenish','se',98,111); 
 insert into student values ('isa','se',98,111); 
 insert into student values ('tehseen','se',98,111); 
 insert into student values ('engineer','se',98,111); 

 
 insert into student values ('numan','it',88,111); 
 insert into student values ('irfan','it',88,111); 
 insert into student values ('masood','it',88,111); 
 insert into student values ('shahid','it',88,111); 
 insert into student values ('daniyal','it',88,111); 

 
 insert into student values ('sidra','cs',77,111); 
 insert into student values ('farhan','cs',77,111); 
 insert into student values ('saqlain','cs',77,111); 
 insert into student values ('adnan','cs',77,111); 
 insert into student values ('peeter','cs',77,111); 


  insert into student values ('sidra','gis',707,111); 
 insert into student values ('farhan','gis',707,111); 
 insert into student values ('saqlain','gis',707,111); 
 insert into student values ('adnan','gis',707,111); 
 insert into student values ('peeter','gis',707,111); 

 -- creating table for teacher 

 create table teacher (teacher_id int identity, t_name varchar(50), course_id int, dpart_id int, t_salary int);

 insert into teacher values ('sabit raheem',98,111,115055);
 insert into teacher values ('ismail',77,111,121000);
 insert into teacher values ('shahid malik',33,111,215055);
 insert into teacher values ('aftab',77,111,319055);
 insert into teacher values ('naeem',88,111,118055);
 insert into teacher values ('zahid ullah',88,111,115055);
 insert into teacher values ('ponam almas',66,111,115055);



-- creating table for couses 
 
create table course(course_id int, course_name varchar(50), dpart_id int );



-- applying joins concepts 
--applying inner join

select student.* , teacher.t_name, teacher.teacher_id   from student inner join teacher on student.course_id = teacher.course_id;

-- applying left join
select student.* , teacher.t_name, teacher.teacher_id   from student left join teacher on student.course_id = teacher.course_id;

--applying right join


select student.* , teacher.t_name, teacher.teacher_id   from student right join teacher on student.course_id = teacher.course_id;

-- applying full join 
select student.* , teacher.t_name, teacher.teacher_id   from student full join teacher on student.course_id = teacher.course_id;
