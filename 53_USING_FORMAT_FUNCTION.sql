-- Project: SQL Learning Journey
SELECT
OrderID, 
CreationTime,
FORMAT (CreationTime, 'MM-dd-yyyy') AS USA_FORMAT,
FORMAT (CreationTime, 'dd/MM/yyyy') AS JP_FORMAT,
FORMAT (CreationTime, 'dd/MM/yyyy') AS D,
FORMAT (CreationTime, 'ddd/MM/yyyy') AS DD,
FORMAT (CreationTime, 'dddd/MM/yyyy') AS DDD,
FORMAT (CreationTime, 'dddd/MMM/yyyy') AS DDDD,
FORMAT (CreationTime, 'dddd/MMMM/yyyy') AS DDDDD
FROM Sales.Orders

/* Show CreationTime using the following format Day Wed Jan Q1 2025 12:34:56 PM */
SELECT
OrderID,
CreationTime,
'Day ' +FORMAT (CreationTime, 'ddd MMM') + 
' Q' + DATENAME (quarter, CreationTime) + 
' ' + FORMAT (CreationTime, 'yyyy hh:mm:ss tt') AS CustomFormat
FROM Sales. Orders

SELECT 
FORMAT(OrderDate, 'MMM yy') AS OrderDate,
COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT (OrderDate, 'MMM yy')

