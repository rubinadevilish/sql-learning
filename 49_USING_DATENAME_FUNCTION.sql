-- Project: SQL Learning Journey

SELECT
OrderID,
CreationTime,
DATENAME (MONTH, CreationTime) AS Month,
DATENAME (WEEKDAY, CreationTime) AS Weekday, 
--DATEPART EXAMPLES
DATEPART (YEAR, CreationTime) AS Year,
DATEPART (HOUR, CreationTime) AS HOUR,
DATEPART (MINUTE, CreationTime) AS Minute,
DATEPART (WEEK, CreationTime) AS Week,
DATEPART (QUARTER, CreationTime) AS Quarter
From sales.Orders