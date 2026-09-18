-- Project: SQL Learning Journey
--Combine the data from employees and customers into one table
SELECT
    FirstName,
    LastName
FROM Sales.Customers
UNION
SELECT
    FirstName,
    LastName
FROM Sales.Employees

/* Orders are stored in separate tables (Orders and OrdersArchive).
Combine all orders into one report without duplicates */

SELECT
'Orders' AS SourceTable
  ,[OrderID]
  ,[ProductID]
  ,[CustomerID]
  ,[SalesPersonID]
  ,[OrderDate]
  ,[ShipDate]
  ,[OrderStatus]
  ,[ShipAddress]
  ,[BillAddress]
  ,[Quantity]
  ,[Sales]
  ,[CreationTime]
FROM Sales.Orders
UNION
SELECT 
'OrdersArchive' AS SourceTable
    ,[OrderID]
    ,[ProductID]
    ,[CustomerID]
    ,[SalesPersonID]
    ,[OrderDate]
    ,[ShipDate]
    ,[OrderStatus]
    ,[ShipAddress]
    ,[BillAddress]
    ,[Quantity]
    ,[Sales]
    ,[CreationTime]
FROM Sales.OrdersArchive
ORDER BY OrderID

/* UNION returns all distinct rows from both queries.
Removes duplicate rows from result. Order of queries
in a UNION operation does not affect the result */