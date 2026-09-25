-- Project: SQL Learning Journey
SELECT
CAST ('123' AS INT) AS [STRING TO INT],
CAST (123 AS VARCHAR) AS [INT TO STRING],
CAST ('2025-08-20' AS DATE) AS [STRING TO DATE],
CAST ('2025-08-20' AS datetime2) AS [STRING TO DATE],
CreationTime,
CAST (CreationTime AS DATE) AS [Datetime to Date]
FROM Sales.Orders



