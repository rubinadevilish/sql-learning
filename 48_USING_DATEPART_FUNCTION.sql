-- Project: SQL Learning Journey

SELECT
OrderID,
CreationTime,
DATEPART (WEEKDAY, CreationTime) AS Weekday,
DATEPART (HOUR, CreationTime) AS HOUR,
DATEPART (MINUTE, CreationTime) AS Minute,
DATEPART (WEEK, CreationTime) AS Week,
DATEPART (QUARTER, CreationTime) AS Quarter
From sales.Orders