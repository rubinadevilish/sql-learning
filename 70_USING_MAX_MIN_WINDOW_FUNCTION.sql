--Project: SQL Learning Journey

/* Find the highest & lowest sales across all orders and the highest & lowest sales for each product.
Additionally, provide details such as order ID and order date. */
SELECT
OrderID, OrderDate, ProductID, Sales,
MAX (Sales) OVER() HighestSales,
MAX (Sales) OVER() HighestSalesByProduct,
MIN (Sales) OVER (PARTITION By ProductID) LowestSales,
MIN (Sales) OVER (PARTITION By ProductID) LowestSalesByProduct
FROM Sales.Orders


-- Show the employees who have the highest salaries
Select * FROM (Select *,
MAX (Salary) OVER () HighestSalary
FROM Sales.Employees) t
WHERE Salary = HighestSalary

--Calculate the deviation of each sale from both the minimum and maximum sales amounts.
SELECT
OrderID, OrderDate, ProductID, Sales,
MAX (Sales) OVER() HighestSales,
MAX (Sales) OVER (PARTITION By ProductID) HighestSalesByProduct,
MIN (Sales) OVER () LowestSales,
MIN (Sales) OVER (PARTITION By ProductID) LowestSalesByProduct,
Sales - MIN (Sales) OVER () DeviationFromMin,
MAX (Sales) OVER () - Sales DeviationFromMax
FROM Sales.Orders

---Calculate the moving average of sales for each product over time
---Calculate the moving average of sales for each product over time, including only the next order.
SELECT
OrderID, ProductID, OrderDate, Sales,
AVG (Sales) OVER (PARTITION BY ProductID) AvgSalesByProduct,
AVG (Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate) MovingAvg,
AVG (Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) RollingAvg
FROM Sales.Orders

/* RUNNING TOTAL Aggregate all values from the beginning up to the current point without dropping off older data.
ROLLING TOTAL Aggregate all values within a fixed time window (e.g. 30 days). As new data is added, the oldest data point will be dropped. */