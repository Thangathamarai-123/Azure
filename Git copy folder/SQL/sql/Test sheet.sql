use AdventureWorksDW2022;

--short cuts:

--1) to see all tables in a data set
select name from sys.tables;

--2) to see the complete table and its description
select * from sys.tables;

--3) see all columns of tables in the database we currently use (sql server)
SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM 
    INFORMATION_SCHEMA.COLUMNS
	where  COLUMN_NAME like'%salesamount%'
ORDER BY 
    TABLE_SCHEMA,
    TABLE_NAME,
    ORDINAL_POSITION;
	
--4)get columns of particular table (sql server)

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'territory'
ORDER BY ORDINAL_POSITION;

--5) common column finding:                                  Maximum usage

select A.COLUMN_NAME
from INFORMATION_SCHEMA.COLUMNS A
join INFORMATION_SCHEMA.COLUMNS B
  on A.COLUMN_NAME = B.COLUMN_NAME
where A.TABLE_NAME = 'DimEmployee'
  and B.TABLE_NAME = 'factinternetsales'


--tables:

select* from AdventureWorksDWBuildVersion;
select * from DatabaseLog;
select * from DimAccount;
select * from DimCurrency;
select * from DimCustomer;
select * from DimDate;
select * from DimDepartmentGroup;
select * from DimEmployee;
select * from DimGeography;
select * from DimOrganization;
select * from DimProduct;
select * from DimProductCategory;
select * from DimProductSubcategory;
select * from DimPromotion;
select * from DimReseller;
select * from DimSalesReason;
select * from DimSalesTerritory;
select * from DimScenario;
select * from FactAdditionalInternationalProductDescription;
select * from FactCallCenter;
select * from FactCurrencyRate;
select * from FactFinance;
select * from FactInternetSales;
select * from FactInternetSalesReason;
select * from FactProductInventory;
select * from FactResellerSales;
select * from FactSalesQuota;
select * from FactSurveyResponse;
select * from NewFactCurrencyRate;
select * from ProspectiveBuyer;

--schema:
use AdventureWorksDW2022;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--05/08/2024
--List the top 3 employees by the salesamount they have processed
select * from[dbo].[FactResellerSales]
select * from [dbo].[DimEmployee]
select * from [dbo].[DimReseller]
select * from [dbo].[ProspectiveBuyer]
select * from[dbo].[DimProduct]
select * from[dbo].[FactInternetSales]
select * from[dbo].[DimCustomer]
use AdventureWorksDW2022
--calculate the average sales amount for each customer marital status

select * from[dbo].[FactInternetSales]
select * from[dbo].[DimCustomer]
select firstname, MaritalStatus, AVG(salesamount) as Avg_Amount from DimCustomer as c 
join FactInternetSales as f 
on c.CustomerKey=f.CustomerKey group by MaritalStatus,FirstName;

--1) List the top 3 employees by the no of orders they have processed
select EmployeeKey, orderquantity from[dbo].[FactResellerSales] where orderquantity>=40;

/*select distinct top 3  e.FirstName, e.lastname, f.OrderQuantity from FactResellerSales as f join DimEmployee as e 
on e.EmployeeKey= f.EmployeeKey 
where OrderQuantity=(select MAX(OrderQuantity) from FactResellerSales )   ;*/

--finally:
select  top 3 e.EmployeeKey, e.firstname,e.lastname, f.orderquantity from dimemployee as e Join FactResellerSales as f 
on e.EmployeeKey=f.EmployeeKey order by f.OrderQuantity desc ;

--2) List the top 3 employees by the no of orders they have processed
SELECT top 3 firstname, orderquantity AS order_count
FROM dimemployee as e Join FactResellerSales as f 
on e.EmployeeKey=f.EmployeeKey 
GROUP BY firstname,orderquantity 
ORDER BY orderquantity DESC
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
--Surya:

--list the top 5 products with the highest sales amount.


Select * from FactInternetSales;
select * from DimProduct;

select top 5 p.ProductKey, p.EnglishProductName , sum(SalesAmount) as TotalSales
from FactInternetSales as s join DimProduct as p 
on p.ProductKey=s.ProductKey  GROUP BY p.ProductKey,
p.EnglishProductName
ORDER BY TotalSales DESC ;

--Identify the top 3 sales territories by the number of distinct customers
select * from DimSalesTerritory
Select * from FactInternetSales;

select top 3 t.SalesTerritoryKey, t.salesTerritoryCountry,
count(distinct s.CustomerKey) as Customerkey 
from FactInternetSales as s 
JOIN 
DimSalesTerritory as t 
ON
t.salesTerritoryKey=s.salesTerritoryKey 
group by t.SalesTerritoryKey, t.salesTerritoryCountry order by Customerkey desc;


--Assign a unique row number to each product based on their sales amount
SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM 
    INFORMATION_SCHEMA.COLUMNS
	where  COLUMN_NAME like'%total%'
ORDER BY 
    TABLE_SCHEMA,
    TABLE_NAME,
    ORDINAL_POSITION;
	
	select SalesAmount from FactInternetSales
    select * from DimProduct


	select d.productkey, d.englishproductName, f.SalesAmount,
	row_number() over(order by (SalesAmount)) as RowNum
	from FactInternetSales as f 
	join 
	DimProduct as d
	on 
	f.ProductKey=d.ProductKey
	order by SalesAmount asc;
 --ROW_NUMBER() OVER (ORDER BY sale_amount DESC) AS row_number

 --------------------------------------------------------------------------------------------------------------------------------------
 --07/08/24

 --SQL to retrieve all rows and columns from the employee table using table aliasing in the Adventureworks database. 
 --Sort the output in ascending order on lastname. Employee table
 use AdventureWorksDW2022
 select * from DimEmployee order by LastName ;

 --SQL to return only the rows for product that have a sellstartdate that is not NULL and a productline of 'T'. 
 --Return productid, productnumber, and name. Arranged the output in ascending order on name.

 select * from DimProduct;
 select productkey, englishproductname from DimProduct where StartDate is not null and ProductLine='T' order by englishproductname ;

 /*write a query in  SQL to find the average and the sum of the subtotal for every customer. Return customerid, average and sum of the subtotal. 
 Grouped the result on customerid and salespersonid. Sort the result on customerid column in descending order.
 */

 select * from [dbo].[DimCustomer]--cus key
 select * from [dbo].[FactInternetSales]
 select * from [dbo].[DimEmployee]--sales territory key


 select c.customerkey as customer_id,e.employeekey as salespersonid, AVG(a.totalproductcost) as 'avg', 
 SUM (a.totalproductcost) as 'sum of subtotal' from DimCustomer c
  join
 FactInternetSales a on 
 c.CustomerKey=a.CustomerKey 
  left join
 DimEmployee e
 on a.SalesTerritoryKey=e.SalesTerritoryKey
 group by c.customerkey,e.employeekey order by customer_id desc;
 




 

 SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM 
    INFORMATION_SCHEMA.COLUMNS
	where  COLUMN_NAME like'%productkey%' 
ORDER BY 
    TABLE_SCHEMA,
    TABLE_NAME,
    ORDINAL_POSITION;
	