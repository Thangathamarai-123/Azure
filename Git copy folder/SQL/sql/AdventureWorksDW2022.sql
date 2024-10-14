use AdventureWorksDW2022;



                                          --25/07/2024 practice time:

select CONCAT('hello ',UPPER('world'));

select *from FactInternetSalesReason;
select *, concat(SalesOrderLineNumber, ' ', SalesReasonKey) as CONCAT_Name from FactInternetSalesReason ;
select SalesOrderNumber, CONCAT(SalesOrderLineNumber, ' ','is',' ', SalesReasonKey) as Description_name from FactInternetSalesReason ;

select LEFT(LOWER('HeLlO 123'),7);

                                                   --left for the concated string: error occurs    --look to it
/*
select SalesOrderNumber, CONCAT(SalesOrderLineNumber, ' ','is',' ', SalesReasonKey) as Description_name,
LEFT((CONCAT(Description_name)),8) as new from FactInternetSalesReason ;*/

select *from FactInternetSalesReason;

select SalesOrderNumber, CONCAT(SalesOrderLineNumber, ' ','is',' ', SalesReasonKey) as Description_name from FactInternetSalesReason ;
select CONCAT(LEFT(upper('HeLlO 123'),10), '.....')as 'new book' ;

select RIGHT(LOWER('HeLlO 123'),7);


select SalesOrderNumber, CONCAT_WS(' ', SalesOrderLineNumber,'is', SalesReasonKey, RIGHT(2024,2)) as Description_name from FactInternetSalesReason ;

select CONCAT_WS(' ', SalesOrderLineNumber,'is', SalesReasonKey, RIGHT(2024,2), LEN(SalesOrderLineNumber), 'characters long')from FactInternetSalesReason;


select *from FactInternetSalesReason order by SalesReasonKey DESC ;

select GETDATE() as D_T;
select CURRENT_TIMESTAMP as CD_T;

select datediff(DAY,'2002-07-01',GETDATE()) as D_T;

select datediff(DAY,'2002-07-01',CURRENT_TIMESTAMP) as D_T;


select datediff(MINUTE,'2002-07-01',GETDATE()) as D_T;

select datediff(MINUTE,'2002-07-01',CURRENT_TIMESTAMP) as D_T;


select datediff(DAY,'2002-07-01',GETDATE()) as D_T;

select dateadd(SECOND,120,CURRENT_TIMESTAMP) as D_T;

select dateadd(WEEK,1,CURRENT_TIMESTAMP) as D_T;


select format(CURRENT_TIMESTAMP,'dddd-MM-yyyy') as D_T;  --MM for months, mm for minutes
select format(CURRENT_TIMESTAMP,'dd-dddd') as D_T;
select format(GETDATE(),'dd-dddd') as D_T;


select format(CURRENT_TIMESTAMP,'dd-MM-yyyy ''is'' dddd') as D_T; 
select format(CURRENT_TIMESTAMP,'hh:mm:ss tt') as D_T; 
select format(CURRENT_TIMESTAMP,'dd-MM-yyyy ''is'' dddd ,hh:mm:ss tt') as D_T; 

select format(CURRENT_TIMESTAMP,'dd-MM-yyyy ''is'' dddd') as D_T; 


select dateadd(DAY,10,CURRENT_TIMESTAMP) as D_T;

                                                                --convert
select CONVERT 
( varchar(20) ,CURRENT_TIMESTAMP,106   )as time;


                                                                 --cast
select CAST 
( CURRENT_TIMESTAMP as varchar(20)   )as time;



use book_store;

select * from books;

                                 --QUERY-1 :  select authors info who are not working in genre 'Self Help'or 'Memoir'

select book_id from books where genre in ('Self Help', 'Memoir')

                          --giving equal to will not give the needed solution
--select * from books where book_id = all(select book_id from books where genre in ('Self Help', 'Memoir'));


select * from books where book_id <> all(select book_id from books where genre in ('Self Help', 'Memoir'));
                                                                                                           --same o/p
select * from books where book_id not in(select book_id from books where genre in ('Self Help', 'Memoir'));
                                                                                                           --same o/p
select * from books where genre not in ('Self Help', 'Memoir');

                                             --cross join
    /*
                      SELECT column_name(s) FROM table1 CROSS JOIN table2; 

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders --inner join same functions at times
WHERE Customers.CustomerID = Orders.CustomerID;
*/

























-------------------------------------------------------------------------------------------------------------------------------------------------------------------



                                                        --HK's query (done)

select Productkey, ListPrice, DealerPrice from DimProduct;
select Productkey, ListPrice, DealerPrice  from DimProduct 
where EndDate is not null; 
select Productkey, ListPrice, DealerPrice, 
ROUND(((ListPrice - DealerPrice)/DealerPrice *100),5) as 'Profit'
from DimProduct order by Profit DESC;
--mine (mod of HK)
select Productkey, ListPrice, DealerPrice, 
ROUND(((ListPrice - DealerPrice)/DealerPrice *100),5) as 'Profit'
from DimProduct where EndDate is not null order by Profit DESC;


                                                        --Malathy's query (dont'n know the question- me)

use AdventureWorksDW2022;

select * from DimCustomer;

select CustomerKey  from DimCustomer;





--------------------------------------------------------------------------------------------------
                               --my references and important queries

/*
IF EXISTS(SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'myTableName'
AND COLUMN_NAME = 'myColumnName')
BEGIN
-- Column Exists
END;
*/


--to see all tables in a data set
select name from sys.tables;

--specific search(U- user table)
select name from sys.objects where type='U';

--to see the complete table and its description
select * from sys.tables;



--1) see all tables

select name from sys.tables
    
--2) see all columns of tables in the database we currently use (sql server)

SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM 
    INFORMATION_SCHEMA.COLUMNS
	--where  COLUMN_NAME like'%sale%'
ORDER BY 
    TABLE_SCHEMA,
    TABLE_NAME,
    ORDINAL_POSITION;



--3)couldn't get(sql)

	SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM 
    information_schema.COLUMNS
WHERE 
    TABLE_SCHEMA = 'AdventureWorksDW2022'  -- Replace with your database name
ORDER BY 
    TABLE_SCHEMA,
    TABLE_NAME,
    ORDINAL_POSITION


--4)get columns of particular table (sql server)

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimDepartmentGroup'
ORDER BY ORDINAL_POSITION;


select * from [dbo].[AdventureWorksDWBuildVersion] ,[dbo].[DatabaseLog];--dont give like this


select * from [dbo].[AdventureWorksDWBuildVersion];

select * from [dbo].[DatabaseLog];