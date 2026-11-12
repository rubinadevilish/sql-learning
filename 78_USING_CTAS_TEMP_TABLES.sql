-- Project: SQL Learning Journey
IF OBJECT_ID ('Sales.MonthlyOrders', 'U') IS NOT NULL
    DROP TABLE Sales.MonthlyOrders;
GO
SELECT
    DATENAME (month, OrderDate) OrderMonth,
    COUNT (OrderID) TotalOrders
INTO Sales.MonthlyOrders
FROM Sales.Orders
GROUP BY DATENAME (month, OrderDate)

SELECT *
INTO #Orders
FROM Sales.Orders

DELETE FROM #Orders
WHERE OrderStatus = 'Delivered'

SELECT *
INTO Sales.OrdersTest
FROM #Orders

/* TABLES Structured Collection of Data like spreadsheet (Columns 0f Rows)
     PERMANENT: Data Live for ever in Database. CREATE - INSERT CTAS: Create Table from a Query.
     TEMpORARy: Data Live only during the Session. 
CTAS USE CASES Creating Snapshot to analyse bugs and data issues. Optimize performance: Persist Complex SQL logic in Table.
TEMP TABLE USE CASE Automatic cleanup of data after session ends */
