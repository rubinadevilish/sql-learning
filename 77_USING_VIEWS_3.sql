-- Project: SQL Learning Journey
-- Provide a view for the EU Sales Team that combines details from all tables and excludes data related to the USA.
CREATE VIEW Sales.V_Order_Details_EU AS
(
SELECT
    o.OrderID,
    o.OrderDate,
    o.Sales,
    o.Quantity,
    p.Product,
    p.Category,
    COALESCE (c.FirstName, '') + ' ' + COALESCE (c.LastName, '') AS CustomerName,
    c.Country AS CustomerCountry,
    COALESCE (e.FirstName, '') + ' ' + COALESCE (e.LastName, '') AS EmployeeName
FROM Sales.Orders o
LEFT JOIN Sales.Products p
ON p.ProductID = o.ProductID
LEFT JOIN Sales.Customers c
ON c.CustomerID = o.CustomerID
LEFT JOIN Sales.Employees e
ON e.EmployeeID = o.SalesPersonID
WHERE c.Country <> 'USA'
)