use keys;

use myDb;

select * from salary;
select * from person;
use hospital;
select * from employes;

select * from employes;
use uniDb;
select * from teacher;
select salary from teacher order by salary asc;

create table salary
(
id int,
s_name varchar(50),
s_salary int
);


insert into salary values (1,'isa',12000);
insert into salary values (2,'akram',13000);
insert into salary values (3,'alam',12000);
insert into salary values (4,'sher',12000);
insert into salary values (5,'seraz',12000);
insert into salary values (6,'bilal',12000);
insert into salary values (7,'talha',12000);
insert into salary values (8,'zain',12000);

select * from salary order by s_salary asc;

