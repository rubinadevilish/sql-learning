-- Project: SQL Learning Journey
-- Step 1 Find the total sales per customer (Standalone CTE)
WITH CTE_TOTAL_SALES AS 
(SELECT
CustomerID,
SUM(Sales) AS TotalSales,
MAX (OrderDate) AS Last_Order
FROM Sales.Orders
GROUP BY CustomerID),
-- Step 2 Find the last order date for each customer (Standalone CTE)
CTE_Last_Order AS
(SELECT
CustomerID,
MAX (OrderDate) AS Last_Order
FROM Sales.Orders
GROUP BY CustomerID),
-- Step 3 Rank Customers based on total sales per customer (Nested CTE)
CTE_Customer_Rank AS
(SELECT
CustomerID,
TotalSales,
RANK () OVER (Order By TotalSales DESC) AS CustomerRank
FROM CTE_TOTAL_SALES),
-- Step 4 segment customers based on their total sales (Nested CTE)
CTE_Customer_Segments AS
(SELECT
CustomerID,
CASE WHEN TotalSales > 100 THEN 'High'
     When TotalSales > 50 THEN 'Medium'
     ELSE 'Low'
END CustomerSegments
FROM CTE_TOTAL_SALES)
--Main query
SELECT
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales,
clo.Last_Order,
ccr.CustomerRank,
ccs.CustomerSegments
FROM Sales.Customers c
LEFT JOIN CTE_TOTAL_SALES AS cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN CTE_Last_Order AS clo
ON clo.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Rank AS ccr
ON ccr.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Segments AS ccs
ON ccs.CustomerID = c.CustomerID



-- Generate a sequence of numbers from 1 to 20
WITH Series AS (
    --Anchor Query
    SELECT
    1 AS MyNumber
    UNION ALL
    -- Recursive Query
    SELECT
    MyNumber + 1
    FROM Series
    Where MyNumber < 1000
)
    -- Main Query
SELECT *
FROM Series
OPTION (MAXRECURSION 5000)


--Show the employee hierarchy by displaying each employee's level within the organization.
WITH CTE_Employee_Hierarchy AS
(-- Anchor Query
SELECT
    EmployeeID,
    FirstName,
    ManagerID,
    1 AS Level
FROM Sales.Employees
WHERE ManagerID IS NULL
UNION ALL
--RECURSIVE Query
SELECT
    e.EmployeeID,
    e.FirstName,
    e.ManagerID,
    LEVEL + 1
FROM Sales.Employees AS e
INNER JOIN CTE_Employee_Hierarchy AS ceh
ON e.ManagerID = ceh.EmployeeID
)
--Main Query
SELECT *
FROM CTE_Employee_Hierarchy


/* Common Table Expression (CTE) is Temporary named result set That can be used multiple times within the Query.
Standalone CTE Runs independently as it's self-contained and doesn't rely on other CTEs or queries
NESTED CTE resides another CTE it cannot run independently.
Recursive CTE Self-referencing query that repeatedly processes data until a specific condition is met.
    you cannot use ORDER BY in CTE */

