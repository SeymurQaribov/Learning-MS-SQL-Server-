create table helloworld(
id int identity,
description varchar(1000));

select *from helloworld;
 
 insert into helloworld (description) values('hello wordl');

 select count(*) from helloworld;
update helloworld set description = ('hello,world') where id = 2;
delete from helloworld where id= 2;


use Northwind
go
select top 10 * from Customers
order by CompanyName;

select top 10 * from Northwind.dbo.Customers
order by CompanyName;

select top 10 * from Northwind.dbo.Customers
where CompanyName LIKE N'AL%'
order by CompanyName;


select top 5 Territories.* ,
Region.RegionDescription from Territories
inner join Region
on  Territories.RegionID = Region.RegionID
order by TerritoryDescription;

select top 5 t.*,
r.Regiondescription from Territories t
inner join Region r
on t.RegionID = r.RegionID
order by TerritoryDescription;

select FirstName+' ' +LastName as ContactName ,Address, City from Employees
union 
select ContactName, Address,City from Customers;