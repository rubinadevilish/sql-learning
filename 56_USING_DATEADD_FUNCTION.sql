-- Project: SQL Learning Journey
SELECT 
OrderID, OrderDate,
DATEADD (year, 2, OrderDate) AS TwoYearsLater,
DATEADD (month, 3, OrderDate) AS ThreeMonthsLater,
DATEADD (day, -20, OrderDate) AS TwentyDaysBefore
FROM Sales.Orders