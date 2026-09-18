-- Project: SQL Learning Journey
-- Find employees who are also customers
SELECT
    FirstName,
    LastName
FROM Sales.Employees
INTERSECT
SELECT
    FirstName,
    LastName
FROM Sales.Customers



/* INTERSECT returns only rows that are common in both queries. */