
use officeTask ;

drop table auser;
truncate table auser;
--creating  user table 

create table auser 
(a_id int primary key,
a_fullName varchar(max) not null, 
a_username varchar(max) not null,
a_password varchar(max) not null,
b_id int,
foreign key(b_id) references b_account(b_id)
);



select * from auser;
--inserting users 

insert into auser values(1,'muhammad isa','isa@gmail.com','123',11);
insert into auser values(2,'alam sher','alam@gmail.com','1223',22);
insert into auser values(3,'sheraz ahmad','sher@gmail.com','12223',33);
insert into auser values (4,'nasir','nasir@gmail.com','1231',44);

--creating accounts table 

create table b_account(b_id int primary key, b_name varchar(max));

insert into b_account values (11,'Facebook');
insert into b_account values (22,'Instagram');
insert into b_account values (33,'youtube'); 
insert into b_account values (44,'Whatsapp');

select * from b_account;



-- creating table for create many to many relationship

--create new table to create many to many relationship with user and accounts 

--create table user_account_relation (
--a_id int, 
--b_id int,
--foreign key(a_id) references auser(a_id),
--foreign key(b_id) references b_account(b_id),);

----inserting 
--insert into user_account_relation values(1,11);
--insert into user_account_relation values(1,22);
--insert into user_account_relation values(1,33);
--insert into user_account_relation values(1,44);

--insert into user_account_relation values(2,11);
--insert into user_account_relation values(2,33);
--insert into user_account_relation values(2,44);

--insert into user_account_relation values(3,22);
--insert into user_account_relation values(3,11);

truncate table auser;


--select * from user_account_relation;
--truncate table user_account_relation;
--creating table for saveinformation 
drop table info_save;
create table info_save
(full_name varchar(max),
account_name varchar(max),
u_name varchar(max),
u_password varchar(50),
DateInserted DATETIME NOT NULL DEFAULT (getdate())
);

drop trigger save_trigger;

--create view  myView
--as

--select a.a_fullName,b.b_name,a.a_username,a.a_password from
--auser as a
--inner join b_account as b
--on a.b_id = b.b_id;

--select* from myView;

--create trigger to save user info into info_save table. 

truncate table info_save;
drop trigger save_trigger;

create trigger save_trigger
on auser 
instead of insert
as 
begin
insert into info_save
select a.a_fullName,b.b_name,a.a_username,a.a_password,GETDATE() from
inserted as a
inner join b_account as b
on a.b_id = b.b_id;
select * from info_save;

select *from auser;
insert into auser values (5,'shani','shani@gmail.com','123445',44);
end;