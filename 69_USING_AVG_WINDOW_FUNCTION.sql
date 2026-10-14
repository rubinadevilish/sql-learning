--Project: SQL Learning Journey

-- Find the average sales across all orders
-- And Find the average sales for each product
-- Additionally provide details such order Id, order date
SELECT
OrderID,
OrderDate,
ProductID,
AVG (Sales) OVER (PARTITION BY ProductID) AvgSalesByProducts,
Sales,
AVG (Sales) OVER () AVGSales
From SALES.Orders

-- Find the average scores of customers
-- Additionally provide details such CustomerID and LastName
SELECT
CustomerID,
LastName,
Score,
COALESCE (Score, 0) CustomerScore,
AVG (COALESCE (Score, 0)) OVER () AvgScoreWithoutNull
From Sales.Customers

--Find all orders where sales are higher than the average sales across all orders.
Select *
FROM (SELECT
OrderID,
ProductID,
Sales,
AVG (Sales) OVER () AvgSales
From Sales.Orders) t
Where Sales > AvgSales