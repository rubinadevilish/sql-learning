-- Project: SQL Learning Journey
/* Retrieve a list of all orders, along with the related customer, product and employee details 
For each order, display: Order ID, Customer's name, Product Name, Sales, Product Price, Salesperson's name */
SELECT
    o.OrderID,
    o.Sales,
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    p.Product AS ProductName,
    p.Price,
    e.FirstName AS SalesPersonFirstName,
    e.LastName AS SalesPersonLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID

SELECT*
FROM Sales.Orders

SELECT*
FROM Sales.Customers

SELECT*
FROM Sales.Employees

SELECT*
FROM Sales.OrdersArchive

SELECT*
FROM Sales.Products