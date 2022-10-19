USE sample_store;
Go

-- What is Data all about 
	Select * from dbo.Orders
	Go

-- How many Year of Data being used for analysis 
	select  distinct Year([Order Date]) as Year  from dbo.Orders 
	order by Year([Order Date])
	Go

-- Sale for four years
	select round (SUM (sales),0) Sales from dbo.Orders
	Go
	
-- Profit for four years 
	select round (SUM (Profit),0) Profit from dbo.Orders
	Go

-- Quanity for four years
	select round (SUM (Quantity),0) Quantity from dbo.Orders
	Go

-- Total Order
	select count(distinct [Order ID]) Total_Orders from dbo.Orders
	Go

-- Number of Customers 
	select count(distinct [Customer ID]) Total_Customers from dbo.Orders
	Go
	
-- Region wise sales for four years 
	select Region,ROUND( sum(sales),0) as Sales from dbo.Orders Group by Region order by Region
	Go

-- Sub-Category sales values
	select 
		[Sub-Category]
		,round(sum(sales),0) Sales
	from dbo.orders
	group by [Sub-Category]
	order by Sales desc
	Go

-- Month Waise Sales
	select 
		left( DATENAME(month,[Order Date]),3) as Months
		,ROUND( SUM(sales),0) as Sales
	from dbo.Orders 
	group by DATENAME(month,[Order Date]),month([Order Date])
	order by month([Order Date])
	Go


	



