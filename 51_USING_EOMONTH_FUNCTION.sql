-- Project: SQL Learning Journey

SELECT 
OrderID,
CreationTime,
EOMONTH(CreationTime) EndofMonth,
CAST (DATETRUNC (month, CreationTime) AS date) StartofMonth
FROM Sales.Orders