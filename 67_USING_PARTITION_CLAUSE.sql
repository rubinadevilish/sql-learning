--Project: SQL Learning Journey

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus) TotalSales
FROM Sales. Orders


SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus) TotalSales
FROM Sales. Orders
ORDER BY SUM (Sales) OVER (PARTITION BY OrderStatus)

--Find the total sales for each order status, only for two products 101 and 102.
SELECT
OrderID,
OrderDate,
OrderStatus,
ProductID,
Sales,
SUM (Sales) OVER (PARTITION BY OrderStatus) TotalSales
FROM Sales. Orders
WHERE ProductID IN (101,102)

/* Window functions can be used ONLY in SELECT and ORDER BY Clauses 
NESTING WINDOW FUNCTIONS IS NOT ALLOWED
SQL execute WINDOW Functions after WHERE Clause
Window Function can be used together with GROUP BY in the same query, ONLY if the same columns are used*/