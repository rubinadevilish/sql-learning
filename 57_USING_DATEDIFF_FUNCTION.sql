-- Project: SQL Learning Journey
--Calculate the age of employees
SELECT 
EmployeeID,
FirstName,
LastName,
BirthDate,
DATEDIFF(year, BirthDate, GETDATE()) Age
From Sales.Employees

--Find the average shipping duration in days for each month
SELECT
MONTH(OrderDate) AS OrderDate,
AVG(DATEDIFF(day, OrderDate, ShipDate)) AS AverageShippingInterval
From Sales.Orders
GROUP By Month (OrderDate)
