1q	create database uniDb;
use uniDb;

create table teacher(id int primary key, tName varchar(50) not null, department varchar(50), position varchar(20),salary varchar(50) check(salary >10000) );
select* from teacher;

insert into teacher values(2323,'Sabit rahim','computer science','perminent',50000);
insert into teacher values(2324,'Dr ismail','computer science','contract',10100);
insert into teacher values(2325,'Sabit rahim','computer science','perminent',49999);
insert into teacher values(2326,'Dr akarm','computer science','contract',10100);
insert into teacher values(2327,'Sabit rahim','computer science','perminent',20000);
insert into teacher values(2328,'Dr ali','computer science','contract',15000);

update  teacher set salary = 10100 where id = 2325;
use mydatabase;
select * from student;

select* into student_backup from student;

select * from student_backup;

alter database mydatabase modify name = myDataBase;
execute sp_renamedb 'myDataBase' , 'dataBase';

create table worker(wrkr_id int, wrkr_name varchar(50), wrkr_salaray varchar(50));

insert into worker values (1,'v',13000);
insert into worker values (2,'c',10400);
insert into worker values (3,'x',10020);
insert into worker values (4,'s',10001);
insert into worker values (5,'d',12000);
insert into worker values (6,'f',10300);
insert into worker values (7,'g',10040);
insert into worker values (8,'h',10005);
insert into worker values (9,'k',16000);
insert into worker values (10,'l',16000);
insert into worker values (11,'p',10700);
insert into worker values (12,'o',10080);
insert into worker values (13,'i',10009);
insert into worker values (14,'u',10000);
insert into worker values (15,'y',21000);
insert into worker values (16,'t',11000);
insert into worker values (17,'r',441000);
insert into worker values (18,'e',12000);
insert into worker values (19,'w',1000);
insert into worker values (20,'q',102300);
insert into worker values (21,'a',100023);
insert into worker values (22,'z',100031);


create index idx_worker on worker(wrkr_salaray asc);
create nonclustered index nn_index on worker(wrkr_salaray desc);
select wrkr_salaray from worker 
select * from worker where wrkr_salaray <800000 and wrkr_salaray > 15000;

sp_helpindex worker;

drop index worker.idx_worker;

create table chek (id int);

insert into chek values(2);
insert into chek values(3);
insert into chek values(1);
insert into chek values(7);
insert into chek values(4);
insert into chek values(6);
insert into chek values(5);
insert into chek values(9);
insert into chek values(8);

create clustered index c_indx2d on chek(id asc);

insert into chek values (3);
insert into chek values (1);
insert into chek values (2);
insert into chek values (3);
insert into chek values (4);
insert into chek values (7);
insert into chek values (0);
insert into chek values (6);

select * from chek;

create table chek_(id int);
insert into chek_ values (2);
create clustered index indx on chek_(id asc);
select * from chek_;
insert into chek_ values (1);