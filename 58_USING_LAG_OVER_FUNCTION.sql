-- Project: SQL Learning Journey
--Find the number of days between each order and the previous order
SELECT
OrderID,
OrderDate AS CurrentOrderDate,
LAG (OrderDate) OVER (ORDER By OrderDate) AS PreviousOrderDate,
DATEDIFF (day, LAG (OrderDate) OVER (ORDER By OrderDate), OrderDate) NoofDays
FROM Sales.Orders