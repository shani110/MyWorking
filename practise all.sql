
create table student2(id uniqueidentifier primary key default newid(), s_name varchar(max));

insert into student2 values (default,'esa');
insert into student2 values (default,'ali ');
insert into student2 values (default,'kamaran');
insert into student2 values (default,'kashi');
insert into student2 values (default,'joolo');
insert into student2 values (default,'rahi');
insert into student2 values (default,'adi');
insert into student2 values (default,'shani');

select * from student1;

select ASCII('a');

--print a to z 



select ASCII('A');
declare @start int;
set @start = 65;
while (@start <91)
begin
print char(@start);
set @start = ( @start + 1);
end