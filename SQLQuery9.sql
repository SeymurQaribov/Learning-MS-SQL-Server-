use Northwind
go 
create table table2( column2 varchar(50))
go
insert into table2 (column2) values('D')
begin transaction 
update table2
set column2 = 'G'
output inserted.*
where column2= 'D'
rollback transaction
select * from table2
drop table table2


select count(*) as countrow from Customers;



select [Tables].name as [Tablename],
sum([Partitions].[rows]) as [Totalrows]
from sys.tables as Tables
join sys.partitions as Partitions
on [Tables].[object_id] = [Partitions].[object_id]
and [Partitions].index_id in (0,1)
group bY [Tables].name;


declare @facedate as varchar(50);
declare @realdate as varchar(50);
set @facedate = 'hasbjas';
set @realdate = '11/11/2021';
select TRY_PARSE('hasbjas' as date);
select TRY_PARSE('11/11/2021' as date);
select TRY_PARSE('11/11/2021' as date using 'Fr-FR') as date;

declare @sampletextas as varchar(50);
declare @realdate2 AS varchar(50);
set @sampletextas  = '1232343';
set @realdate2 = '10/10/2012';
select TRY_CONVERT(int, @sampletextas);
select TRY_CONVERT(datetime, @realdate2);
select TRY_CONVERT(datetime,@realdate2,111) as date;


declare @sampletext1 as varchar(50);
set @sampletext1  ='12234';
select TRY_CAST(@sampletext1 as int);
select Try_cast (@sampletext1 as date);

select CONVERT(varchar(100),getdate(),108);