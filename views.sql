use uniDb;

select * from teacher ;
select * from worker;

drop table worker;
 select * from chek;
 select * from chek_;
 drop table chek;
 drop table chek_;

 select * from info;
 drop table info;

 select * from teacher;
 alter table teacher alter column  sub_id int;

 update teacher set sub_id = 32 where position = 'contract';

 create table student
 (s_id int primary key,
 s_name varchar(50) not null , 
 department varchar(50) not null, 
 section varchar(50), 
 sub_id int  default ' not registered ',


 );
    insert into student values (2,'umer','computer science', 'software engineering',22);
    insert into student values (3,'umair','computer science', 'software engineering',22);
    insert into student values (4,'isa','computer science', 'software engineering',22);
    insert into student values (5,'tehseen','computer science', 'software engineering',22);
	insert into student values (6,'ali','computer science', 'software engineering',22);
	insert into student values (7,'akram','computer science', 'software engineering',22);
	insert into student values (8,'asgar','computer science', 'IT',32);
	insert into student values (9,'zuhaib','computer science', 'IT',32);
	insert into student values (10,'farhan','computer science', 'IT',32);
	insert into student values (11,'beenish','computer science', 'IT',32);
	insert into student values (12,'sidra','computer science', 'IT',32);
    insert into student values (13,'sunaira','computer science', 'IT',22);
	insert into student values (14,'mujahid','computer science', 'IT',22);
    insert into student values (15,'shaik','computer science', 'IT',32);
    insert into student values (16,'nasir','computer science', 'IT',22);
    insert into student values (17,'kashif','computer science', 'IT',32);
    insert into student values (18,'karamat','computer science', 'IT',22);
	insert into student values (19,'irfan','computer science', 'it',22);



	select * from teacher;
	select * from student;

	create view v_student 
	as

	select student.* , teacher.tName 
	from
	student inner join teacher 
	 on student.sub_id = teacher.sub_id;


	 select * from v_student;






	





