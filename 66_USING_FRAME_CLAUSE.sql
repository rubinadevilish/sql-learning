--Project: SQL Learning Journey
SELECT
OrderID, OrderDate, Orderstatus, Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) TotalSales
FROM Sales.Orders

SELECT
OrderID, OrderDate, Orderstatus, Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) TotalSales
FROM Sales.Orders

SELECT
OrderID, OrderDate, Orderstatus, Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS 2 PRECEDING) TotalSales
FROM Sales.Orders

SELECT
OrderID, OrderDate, Orderstatus, Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS UNBOUNDED PRECEDING) TotalSales
FROM Sales.Orders

SELECT
OrderID, OrderDate, Orderstatus, Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate) TotalSales
FROM Sales.Orders

SELECT
OrderID, OrderDate, Orderstatus, Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus) TotalSales
FROM Sales.Orders

/* For only PRECEDING, the CURRENT ROW can be skipped 
SQL uses Default Frame, if ORDER BY is used without FRAME*/