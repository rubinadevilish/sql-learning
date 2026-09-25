-- Project: SQL Learning Journey
-- Convert a string to integer
SELECT
CONVERT (INT, '123') AS [String to INT CONVERT],
CONVERT (DATE, '2025-08-20') AS [String to Date CONVERT],
CreationTime,
CONVERT (DATE, CreationTime) AS [Datetime to Date CONVERT],
CONVERT (varchar, CreationTime, 32) AS US_Style,
CONVERT (varchar, CreationTime, 34) AS EU_Style
FROM Sales.Orders




 