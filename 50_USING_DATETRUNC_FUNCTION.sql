-- Project: SQL Learning Journey

SELECT
OrderID,
DATETRUNC (MINUTE, CreationTime) AS CreationTime,
DATETRUNC (DAY, CreationTime) AS CreationDay,
DATETRUNC (YEAR, CreationTime) AS CreationYear,
--Simplifying time with LEFT function
LEFT (CreationTime, 16) AS CreationDate,
--DATENAME EXAMPLES
DATENAME (MONTH, CreationTime) AS Month,
DATENAME (WEEKDAY, CreationTime) AS Weekday, 
--DATEPART EXAMPLES
DATEPART (YEAR, CreationTime) AS Year,
DATEPART (HOUR, CreationTime) AS HOUR,
DATEPART (MINUTE, CreationTime) AS Minute,
DATEPART (WEEK, CreationTime) AS Week,
DATEPART (QUARTER, CreationTime) AS Quarter
From sales.Orders


SELECT 
DATETRUNC (MONTH, CreationTime) Creation,
COUNT(*) From Sales.Orders
GROUP BY DATETRUNC (MONTH, CreationTime)
