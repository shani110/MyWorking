 use dataBase;


use uniDb;

select * from worker;
create function addition (@num1  int, @num2  int)
returns int
as 
begin
return (@num1 + @num2)
end


select * from teacher;


select dbo.additio(12,12);

-- creating a function print cube of a number 

create function _cube(@n int )
returns int
as 
begin 
return (@n * @n * @n)
end;

select dbo._cube(3) as cube_value;

--print details of required person 

alter function _Details(@id as int)
returns table
as 

return 
(
select * from teacher where id = @id
)

select* from  dbo._Details(2323);

create function show(@name as varchar(50))
returns table 
as 
return
(
select * from teacher where tName = @name
)


select * from dbo.show('sabit rahim');

select * from teacher ;