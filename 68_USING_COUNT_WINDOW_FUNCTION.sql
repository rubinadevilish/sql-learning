--Project: SQL Learning Journey
-- Find the total number of Orders
-- Find the total number of Orders for each customers
-- Additionally provide details such order Id, order date

SELECT
    OrderID,
    OrderDate,
    CustomerID,
    COUNT (*) OVER () TotalOrders,
    COUNT (*) OVER (PARTITION BY CustomerID) OrdersByCustomers
FROM Sales.Orders


--- Find the total number of Customers
-- Additionally provide All customers Details
SELECT *,
COUNT (*) OVER () TotalCustomers,
COUNT (Score) OVER () TotalScores,
COUNT (Country) OVER () TotalCountries
FROM Sales.Customers

-- Find the percentage contribution of each product's sales to the total sales
SELECT
OrderID,
ProductID,
Sales,
SUM (Sales) OVER () TotalSales,
ROUND (CAST (Sales AS float) / SUM (Sales) OVER () * 100, 2) AS PercentofTotalSales
From Sales.Orders