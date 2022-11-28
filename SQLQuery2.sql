drop table mytb;
create table mytb(id int primary key identity(5500,10), t_name varchar(max) not null, age int check(age>10));

insert into mytb values ('isa',12);
insert into mytb values ('kaleem',13);
insert into mytb values ('isa',14);
insert into mytb values ('kaleem ',15);
select * from mytb;
insert into mytb values( 2,null);
-- unique , not null , check
--primary key 
--identity