-- Project: SQL Learning Journey
--Find the sales price for each order by dividing the sales by the quantity.
SELECT
ORDERID,
Sales,
Quantity,
Sales / NULLIF (Quantity, 0) AS SalesPrice
FROM Sales.Orders


