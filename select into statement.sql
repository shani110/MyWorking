use uniDb;



select *   into saving_ from dbo.login_;

create database xyz;
use xyz;

create table reg (username varchar(max), u_password varchar(50));
create table login_ (l_username varchar(max), l__password varchar(50));


insert into reg values ('isa','123');
insert into reg values ('esa','122');
insert into reg values ('eysa','111');
insert into reg values ('shani','222');
insert into reg values ('ali','333');
insert into reg values ('akmal','444');
drop table saveme;

create table saveme (s_name varchar(max), sp varchar(50));
insert into login_ values ('isa','123');
insert into login_ values ('shani','222');
insert into login_ values ('ijlal','121');
insert into login_ values ('akmal','444');
insert into login_ values ('akmal','9');

drop table saveme;
select l_username,l__password into saveme from login_ where l_username in (select username from reg) and l__password in (select u_password from reg) ;
select * from login_;
select * from saveme;