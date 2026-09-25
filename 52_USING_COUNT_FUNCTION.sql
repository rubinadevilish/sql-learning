-- Project: SQL Learning Journey

-- How many orders were placed each year?
SELECT 
YEAR (OrderDate),
COUNT(*)NoOfOrders
FROM Sales.Orders
GROUP BY YEAR (OrderDate)

-- How many orders were placed each month?
SELECT 
MONTH (OrderDate),
COUNT(*)NoOfOrders
FROM Sales.Orders
GROUP BY MONTH (OrderDate)

SELECT 
DATENAME (month, OrderDate),
COUNT(*)NoOfOrders
FROM Sales.Orders
GROUP BY DATENAME (month, OrderDate)

-- How many orders were placed in particular day of week?
SELECT 
DATENAME (WEEKDAY, OrderDate),
COUNT(*)NoOfOrders
FROM Sales.Orders
GROUP BY DATENAME (WEEKDAY, OrderDate)

--Show all orders that were placed during month of February
SELECT *
FROM Sales.Orders
WHERE MONTH (OrderDate) = 2

/* Filtering Data using an Integer is faster than using a String 
IF we use DATEPART -> we get INTEGER
          DATENAME -> we get STRING
          DATETRUNC-> we get DATETIME
          EOMONTH  -> we get DATE
If we need day or month in numeric we use DAY () MONTH (), if in full name we use DATENAME 
IF we need year only then we use YEAR (). If we need other parts of a date e.g. week, quarter then we use DATEPART ()*/

