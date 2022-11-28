use keys;
create table cat 
(cat_id int primary key,

cat_name varchar(50) not null,

cat_catagory varchar(50)

);
insert into cat values (2,'acat','germen');
insert into cat values (3,'bCat','france');
insert into cat values (4,'gcat','egypt');
insert into cat values (5,'fcat','turkey');
insert into cat values (6,'mcat','isaml');
insert into cat values (7,'kcat','asdkf');
insert into cat values (8,'dcat','kya bili ha yaar');








create table bigCat 
(
     cat_name varchar(50) not null, 
	 cat_size varchar(50) not null, 
	 cat_color varchar(50) not null, 
	 cat_id int 


);

insert into bigcat values ('lion', '3 feet','black and white',1);
insert into bigcat values ('cheeta', '2 feet','brown  ',2);
insert into bigcat values ('snowcat', '2.5 feet','  white',3);
insert into bigcat values ('leopard', '3 feet','  gray',4);
insert into bigcat values ('kingkong', '2 feet','pink and white',5);


create table house_cat 
(
     cat_name varchar(50) not null, 
	 cat_size varchar(50) not null, 
	 cat_color varchar(50) not null, 
	 cat_id int


);

create procedure cat_procedure 
as
begin
select cat.cat_id, bigCat.cat_name, bigCat.cat_color, bigCat.cat_size , cat.cat_catagory
from 
cat inner join bigCat
on
cat.cat_id =bigCat.cat_id
end;

execute cat_procedure;
create procedure cat_procedure_
@id int
as
begin
select cat.cat_id, bigCat.cat_name, bigCat.cat_color, bigCat.cat_size , cat.cat_catagory
from 
cat inner join bigCat
on
 @id = cat.cat_id 
end;

execute cat_procedure_ 4;
execute cat_procedure_ 3;
use dataBase;

use uniDb;


create table A_ (id int);
insert into A_ values(5);
insert into A_ values(3);
insert into A_ values(2);
insert into A_ values(1);
insert into A_ values(8);
insert into A_ values(4);
insert into A_ values(6);

select * from A_;

select * from A_ order by id;
Delete from A_ where id = 8;

select top 3* from A_;

select * from student_;
select * from GilgitStudent;