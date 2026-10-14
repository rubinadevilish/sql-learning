--Project: SQL Learning Journey
-- Rank the orders based on their sales from highest to lowest
SELECT
OrderID, ProductID, Sales,
ROW_NUMBER () OVER (ORDER BY Sales DESC) SalesRankRow,
RANK() OVER (ORDER BY SALES DESC) SalesRank_Rank,
DENSE_RANK () OVER (ORDER BY SALES DESC) SalesRank_Dense,
NTILE (3) OVER (ORDER BY Sales DESC) SalesRank_NTILE,
CUME_DIST () OVER (ORDER BY Sales DESC) SalesRank_CumeDist,
PERCENT_RANK () OVER (ORDER BY Sales DESC) SalesRank_Percent
FROM Sales.Orders

-- Find the top highest sales for each product
SELECT * FROM (Select
OrderID, ProductID, Sales,
ROW_NUMBER () OVER (PARTITION BY ProductID ORDER BY Sales DESC) SalesRankRow
FROM Sales.Orders) t WHERE SalesRankRow = 1

-- Find the lowest 2 customers based on their total sales
SELECT * FROM (SELECT
CustomerID, SUM (Sales) AS TotalSales,
ROW_NUMBER () OVER (ORDER BY  SUM (Sales)) RankCustomers
FROM Sales.Orders GROUP BY CustomerID)t WHERE RankCustomers <=2

-- Assign unique IDs to the rows of the 'Orders Archive' table
SELECT 
ROW_NUMBER () OVER (ORDER BY OrderID, OrderDate) AS UniqueID, *
FROM Sales.OrdersArchive

-- Identify duplicate rows in the table 'Orders Archive' and return a clean result without any duplicates
SELECT * FROM (SELECT 
ROW_NUMBER () OVER (PARTITION BY OrderID ORDER BY CreationTime DESC) AS RN, 
* FROM Sales.OrdersArchive)t WHERE RN > 1

--Segment all orders into 3 categories: high, medium and low sales
SELECT *,
CASE WHEN Buckets = 1 THEN 'HIGH' 
    WHEN Buckets = 2 THEN 'MEDIUM' 
    WHEN Buckets = 3 THEN 'LOW'
END SalesSegmentations
FROM (
SELECT
OrderID, Sales, 
NTILE (3) OVER (ORDER BY SALES DESC) Buckets
FROM Sales.Orders) t 

--In order to export the data, divide the orders into 2 groups
SELECT
NTILE(4) OVER (ORDER BY OrderID) AS Buckets, *
FROM Sales.Orders

--Find the products that fall within the highest 40% of the prices
SELECT *, CONCAT (DistRank * 100, '%') AS DistRankPercent
FROM (
    SELECT 
        Product,
        Price,
        CUME_DIST () OVER (ORDER BY Price DESC) DistRank
    FROM Sales.Products)t 
WHERE DistRank <= 0.4
