BACKUP DATABASE [AdventureWorksDW2019] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\adbackup' WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorksDW2019-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
use AdventureWorksDW2019;

select * from DimAccount;
select * from vAssocSeqLineItems;
use hospital;
select * from customer;
SELECT wait_type, wait_time_ms  
FROM sys.dm_os_wait_stats; 

select * from customer;
select * from employes;
select * from employes;
use uniDb;

select * from teacher;

select teacher.salary from teacher where order by( salary asc);


