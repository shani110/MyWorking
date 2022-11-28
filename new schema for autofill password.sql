drop database speridian;

create database speridian;

use speridian;
--creating new schema for save passwords 


create schema auto_fill
go

--creating adding users table 

create table auto_fill.Registration
(
id int primary key identity, 
username varchar(max) not null, 
gmail varchar(max) not null, 
password varchar(max) check (len([password]) >= (8)),
age int not null check (age > 10),
contact bigint not null check (len (contact) >= (10))
);

--inserting sample data into table 

insert into auto_fill.Registration values 
(
'akram',
'c@gmail.com',
'11112222',
18,
032564562342
);
use speridian;

select * from auto_fill.Registration;
-- creating table for login 

create table auto_fill.user_login 
(
login_username varchar(max) not null,

login_password varchar(max) not null

);

create table auto_fill.save_info 
(
save_info_name varchar(max) not null,

save_info_password varchar(max) not null

);

create trigger savePswrd 
on auto_fill.user_login
instead of insert 
 as 
 begin 
    if( (select auto_fill.user_login.login_username  from auto_fill.user_login where in (select auto_fill.Registration.username from auto_fill.Registration )
  and (select auto_fill.user_login.login_password  from auto_fill.user_login where in (select auto_fill.Registration.password  from auto_fill.Registration ))
    begin
	print ' saving'

    end
 
 else
    begin

	print 'sorry'
    end;

 end;

 select * from auto_fill.Registration;