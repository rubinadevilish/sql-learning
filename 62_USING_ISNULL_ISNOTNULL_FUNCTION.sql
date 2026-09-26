-- Project: SQL Learning Journey
-- Identify the customers who have no scores
SELECT *
FROM Sales.Customers
WHERE Score IS NULL

--List all customers who have scores
SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL

--list all details for customers who have not placed any orders
SELECT 
c.*,
o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales. Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL


/* Only use NULLs and empty strings, but avoid blank spaces.
Only use NULLS and avoid using empty strings and blank spaces
Use the default value 'unknown' and avoid using nulls, empty strings, and blank spaces.
Replacing empty strings and blanks with NULL during data preparation before inserting into a database to optimize storage and performance.
Replacing empty strings, blanks, NULL with default value during data preparation before using it in reporting to improve readiblity and reduce confusion