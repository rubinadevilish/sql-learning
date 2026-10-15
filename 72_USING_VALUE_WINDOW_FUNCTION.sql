-- Project: SQL Learning Journey
-- Analyze month-over-month (MoM) performance by finding percentage change in sales between current and previous month
SELECT *, CurrentMonthSales - PreviousMonthSales AS MoM_Change,
ROUND (CAST ((CurrentMonthSales - PreviousMonthSales) AS FLOAT)/ PreviousMonthSales * 100, 2) AS Percent_MoM_Change
FROM (SELECT 
    MONTH (OrderDate) OrderMonth,
    SUM (Sales) CurrentMonthSales,
    LAG (SUM (Sales)) OVER (ORDER BY MONTH (OrderDate)) PreviousMonthSales
From Sales.Orders
GROUP By MONTH (OrderDate)) t


--Analyze customer loyalty by ranking customers based on the average number of days between orders
SELECT
CustomerID,
AVG (DaysUntilNextOrder) AS AvgDays,
RANK () OVER (ORDER BY AVG (DaysUntilNextOrder)) AS RankAvg
FROM (SELECT
    OrderID,
    CustomerID,
    OrderDate AS CurrentOrder,
    LEAD (OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS NextOrder,
    DATEDIFF (DAY, OrderDate, LEAD (OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate)) DaysUntilNextOrder
FROM Sales.Orders) t
GROUP BY CustomerID

-- Find the lowest and highest sales for each product
SELECT
    OrderID, 
    ProductID, 
    Sales,
FIRST_VALUE (Sales) OVER (PARTITION BY ProductID ORDER BY Sales) LowestSales,
LAST_VALUE (Sales) OVER (PARTITION BY ProductID ORDER BY Sales
ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) HighestSales,
FIRST_VALUE (Sales) OVER (PARTITION BY ProductID ORDER BY Sales DESC) HighestSales2,
MIN (Sales) OVER (PARTITION BY ProductID) LowestSales2,
MAX (Sales) OVER (PARTITION BY ProductID) HighestSales3,
Sales - FIRST_VALUE (Sales) OVER (PARTITION BY ProductID ORDER BY Sales) AS SalesDifference
FROM Sales.Orders
