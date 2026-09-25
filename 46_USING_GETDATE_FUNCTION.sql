-- Project: SQL Learning Journey

SELECT
OrderID,
OrderDate,
ShipDate,
CreationTime
From sales.Orders

SELECT
OrderID,
CreationTime,
'2025-08-20' AS HardCoded
From sales.Orders

SELECT
OrderID,
CreationTime,
'2025-08-20' AS HardCoded,
GETDATE () Today
From sales.Orders

