create database sp;
use sp;

--creating a schema for adding user, saving user password and user name 

create schema a
go


-- creating table for Registration of users 
drop table a.add_user;

create table a.add_user 
( 
reg_name varchar(100) not null unique, 
reg_password varchar(max) not null
);

-- adding sample data to 

insert into a.add_user values ('isa','12121212');
insert into a.add_user values ('shani','12345678');
insert into a.add_user values ('muhammad','22224444');
insert into a.add_user values ('ali','11112222');

-- creating table for login 
drop table a.user_login;
create table a.user_login (login_name  varchar(50) not null unique  , login_password varchar(max)  );

-- creating table save passwords 

create table a.save_info (name_info varchar(max), name_password varchar(max));

--logging in for customer

select * from a.add_user;

insert into a.user_login values ('ali','11112222');
insert into a.user_login values ('akram','11112222');
insert into a.user_login values ('muhammad','22224444');


--deleting all previous data from login table and save password table 
truncate table a.user_login;
truncate table a.save_info;
 
--creating trigger to save password for auto fill 

drop trigger a.saving_trigger;


 create trigger a.saving_trigger 
      on a.user_login
  instead of insert 
 as
  begin
   
      INSERT INTO a.save_info SELECT * FROM inserted 
  
      where login_name in (select reg_name from a.add_user) and login_password in (select reg_password from a.add_user);

        select * from a.save_info;
 end;

 select id from auser;
