-- Project: SQL Learning Journey

SELECT
OrderID,
CreationTime,
YEAR (CreationTime) Year,
MONTH (CreationTime) Month,
DAY (CreationTime) Day,
DATEPART (WEEKDAY, CreationTime) AS Weekday,
DATEPART (HOUR, CreationTime) AS HOUR,
DATEPART (MINUTE, CreationTime) AS Minute,
DATEPART (WEEK, CreationTime) AS Quarter
DATEPART (QUARTER, CreationTime) AS Quarter
From sales.Orders



