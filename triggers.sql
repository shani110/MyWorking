use myDb;
use weakend;
select * from employee;

create table emp (id int, salary int);

insert into emp values (1,12000);
insert into emp values (2,13000);
insert into emp values (3,14000);
insert into emp values (4,15000);
insert into emp values (5,16000);
insert into emp values (6,17000);
insert into emp values (7,18000);
insert into emp values (8,19000);

select * from emp;
-- creating triggers 
create trigger salary_difference
after insert OR update or delete  on emp.salary
for each row
declare salary_difference  int;
begin 
salary_difference := :old.salary - :new.salary;
dbms_output.put_line('new salary:'||new.salary);
dbms_output.put_line('old salary:'||salary_difference);

dbms_output.put_line('salary difference:'||salary_difference);
end;

create trigger t on emp.salary
after insert,delete 
as 
begin
set nocount on;
print 'inserted';
end;
use weakend;

select* from dbo.employee;

create table info_(id int primary key identity, i_name varchar (90));
create table information( vl  varchar(200));

create trigger kuchaa   on info_ 
after insert 
as 
 begin 
 declare @id int
  declare @name varchar(200)
 set @name = 'shani'
 insert into information values (' inserted data by '+ @name+  cast(GETDATE() as varchar(50)));
  end
  insert into info_ values ('karmat');
  --istead of trigger 
   --it will run instead of insert trigger 
    

   create table class_fifth (id int , c_name varchar(50));

   create trigger c_fifth_trigger
   on class_fifth
   instead of insert
   as 
   begin 

   print'you can not insert in this table'
   end

   insert into class_fifth values (1,'shani');

   -- instead of update example. in this if we try to update data it will run instead of update option 
   
   create trigger c_fifth_trigger_update
   on class_fifth
   instead of update
   as 
   begin 

   print'you can not updeat in this table'
   end

   update class_fifth set c_name = 'ali' where id = 1;

   create table class_audit (audit_id int primary key identity, audit_info varchar(max));
    
	-- save instered data in new table 
	 
	 drop trigger c_fifth_trigger;

	  create table class_fifth (id int , c_name varchar(50));
	  drop trigger c_fifth_trigger_audit;
   create trigger c_fifth_trigger_audit
   on class_fifth
   instead of insert
   as 
   begin 

   insert into class_audit values (' someone trying to insert data at : ' + cast(getdate() as varchar(50)));
   select * from class_audit;
   end

   insert into class_fifth values (2, 'isa');

   ----same method is used for update and delete . 
   -- ddl trigger. these triggers are applied on database so that it calls when we deleter create or alter a table . 

   create trigger db_trigger 
   on database
   after Create_table 
   as 
   begin 
   print 'table is created'
   end
   
   
   create table abc (id int);
   create table a_c (id int);

    -- for alter table trigger 
	create trigger db_trigger_alter 
   on database
   after alter_table 
   as 
   begin 
   print 'table is altered'
   end
   
   alter table abc add a_name varchar(50);
   -- for dropping table trigger 
   	create trigger db_trigger_drop 
   on database
   after drop_table 
   as 
   begin 
   print 'table is droped'
   end

   drop table abc;
   drop trigger db_trigger_drop;
   drop trigger db_trigger_alter;

   -- creating trigger for all operation in onces 

    	create trigger db_trriger 
   on database
   for create_table, alter_table, drop_table 
   as 
   begin 
   print 'operation is done '
   end

   create table x (id int);
   drop table x;



   -- using triggers with procedurs 
    
	create trigger pro_trigger 
    on database 
	for create_procedure 
	as 
	begin 
	rollback
	print'you can not create procedure'
	end;
	 
	 create procedure ab_procedure
	 as 
	 begin 
	 print'this is my proceudre'
	 end;


	 --the below comand will disable data.. 
	disable trigger pro_trigger on database;
	-- the bellow command will again enable triger 
	 enable trigger pro_trigger on database;
	 -- we can make trigge for rename also  . 


	 -- if we make triger on server then it we be apply for all the databases exsits in a server. 
	 -- we have to write all server in place of database in trigger syntax. 