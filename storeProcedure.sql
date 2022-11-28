use dataBase;
create database speridian;

create table GilgitStudent(id int , sname varchar(50), dept varchar(70), deptId int );

insert into GilgitStudent values(1,'isa','database',111);
insert into GilgitStudent values(2,'shabii','qa',222);
insert into GilgitStudent values(3,'rukhsana','database',111);
insert into GilgitStudent values(4,'sidra','c sharp',333);
insert into GilgitStudent values(5,'beenish','c sharp',333);

create procedure dbStudent
as 
begin
select * from GilgitStudent where deptId = 111;
end;

 execute dbStudent;
 -- permeterize procedure
 create procedure gstudent 
   @id int
   as
 begin
 select * from GilgitStudent where id = @id
  end;
  
  execute gstudent 3;
  execute gstudent 4;

 create procedure get_name 
 as 
 begin 

 select GilgitStudent.sname from GilgitStudent
 end;

 execute get_name;

 create procedure get_deeept
 
 @id int
 as
 begin 
 select GilgitStudent.deptId from GilgitStudent  
  where id  = @id
 end;

execute get_deeept;


create procedure get_names 
 @id int
 as 
 begin 

 select GilgitStudent.sname from GilgitStudent where id = @id
 end;

 execute get_names 5;
 select * from GilgitStudent;

 alter table GilgitStudent add city varchar(50);
 alter table GilgitStudent alter column city int;

 select* from GilgitStudent;


 create table myPet(id int primary key, pet_name varchar(50));

 alter table myPet add color varchar(50);

 insert into myPet values(1,'cat','black');

 select * from myPet;

 create table marksheet(id int, marksGain int, totalMarks int, totalSub int);

       insert into marksheet values(1,998,1100,12);
       insert into marksheet values(2,998,1100,12);
       insert into marksheet values(3,790,1100,12);
       insert into marksheet values(4,708,1100,12);
	   insert into marksheet values(5,798,1100,12);
	   insert into marksheet values(6,898,1100,12);

	   insert into marksheet values(1,998,1100,12);
       insert into marksheet values(2,998,1100,12);
       insert into marksheet values(3,790,1100,12);
       insert into marksheet values(4,708,1100,12);
	   insert into marksheet values(5,798,1100,12);
	   insert into marksheet values(6,898,1100,12);
	   select* from marksheet;
 
	 
	 alter index indx_ on marksheet(marksGain asc, id asc);

	 select* from marksheet where marksGain > 890;

 



 select * from person;

