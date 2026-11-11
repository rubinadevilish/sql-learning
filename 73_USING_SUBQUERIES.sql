-- Project: SQL Learning Journey

SELECT AVG (ProductID)
FROM Sales.Orders

SELECT
CustomerID,
OrderID
FROM Sales.Orders

Select *
FROM Sales.Orders

--Find the products that have a price higher than the average price of all products.
SELECT* 
FROM (
    Select
        ProductID,
        Price,
    AVG (Price) OVER () AvgPrice
    From Sales.Products) t
WHERE Price > AvgPrice

Select
    ProductID,
    Price
FROM Sales.Products
WHERE Price > (Select AVG (Price) FROM Sales.Products)

--Rank customers based on their total amount of sales
SELECT *,
RANK () OVER (ORDER BY TotalSales DESC) CustomerRank
FROM
    (SELECT
        CustomerID,
        SUM (Sales) TotalSales
    FROM Sales.Orders
    GROUP BY CustomerID) t

--Show the product IDs, names, prices and total number of orders.
Select
    ProductID,
    Product,
    Price,
(SELECT COUNT (*) FROM Sales.Orders) AS TotalOrders
From Sales.Products

--Show all customer details and find the total orders for each customer.
SELECT
c.*,
t.TotalOrders
FROM Sales.Customers c
LEFT JOIN 
    (Select 
    CustomerID, 
    COUNT (*) TotalOrders 
    FROM Sales.Orders 
    GROUP BY CustomerID) t
ON c.customerID = t.CustomerID

SELECT *,
(Select COUNT (*) FROM Sales.Orders o 
WHERE o.CustomerID = c.CustomerID) TotalOrders
FROM Sales.Customers C

-- Show the details of orders made by customers in Germany
SELECT *
FROM Sales.Orders
WHERE CustomerID IN 
    (SELECT 
        CustomerID
        FROM Sales.Customers
    WHERE country = 'Germany')

SELECT *
FROM Sales.Orders AS o
WHERE EXISTS (SELECT *
FROM Sales.Customers AS C
WHERE Country = 'Germany' AND o.CustomerID = c.CustomerID)

-- Show the details of orders made by customers not in Germany
SELECT *
FROM Sales.Orders
WHERE CustomerID IN 
    (SELECT 
        CustomerID
        FROM Sales.Customers
    WHERE country  != 'Germany')

--Find female employees whose salaries are greater than the salaries of any male employees
SELECT
    EmployeeID,
    FirstName,
    Gender,
    Salary
FROM Sales.Employees
WHERE Gender = 'F' AND Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender = 'M')
