use uniDb;

select * from teacher;

 select * from teacher;
 update teacher set tName = 'sir dostdar' where id = 2325;
 -- we can not undo ubove operation because it is implicit transection 

 -- explicit transection 
 -- in this transection we can undo or finalize data
 begin transaction 

 update teacher set tName = 'Sir naeem' where id = 2327;
 commit transaction
 
 -- undo trancation 
 select * from teacher;
 begin transaction 

 update teacher set tName = 'Sir ali' where id = 2327;
 

 rollback transaction;

 --transaction with try and catch block 
begin try 
 begin transaction 
 update teacher set salary = 100000 where position = 'perminent'
 update teacher set salary = 50000 where position = 0
 
 commit transaction 

 print 'Transaction completed'
 end try 
 begin catch 
 print 'error'
 rollback transaction
 end catch 

 select * from teacher;