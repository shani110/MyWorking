use uniDb;

declare @num1 as int;
declare @num2 as int;

begin try 
set @num1 = 9;
set @num2 = @num1/0
end try 
begin catch
print ERROR_MESSAGE()
end catch

-- user define message

declare @num_ as int;  
declare @num2_ as int;

begin try 
set @num_ = 9;
set @num2_ = @num_/0
end try 
begin catch
print 'this is divide by zero exception '
end catch


-- example for adding string to int variable 

begin try 
select teacher.department + teacher.tName as d from teacher 
end try

begin catch 
print 'can not add string to int '
end catch 


 ------------------------------------- int + string -------------

 begin try 
 select teacher.id + teacher.tName from teacher 
 end try 

 begin catch 
 select ERROR_MESSAGE();
 end catch

 begin try 
 select 7/0;
 end try
 begin catch 
select ERROR_MESSAGE();
 end catch ;