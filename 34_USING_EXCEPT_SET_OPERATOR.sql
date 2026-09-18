-- Project: SQL Learning Journey
--Find employees who are not customers at the same time
SELECT
    FirstName,
    LastName
FROM Sales.Employees
EXCEPT
SELECT
    FirstName,
    LastName
FROM Sales.Customers

--Find customers who are not employees at the same time
SELECT
    FirstName,
    LastName
FROM Sales.Customers
EXCEPT
SELECT
    FirstName,
    LastName
FROM Sales.Employees

/* EXCEPT (MINUS) returns all distinct rows from the first query that are not found in the second query 
It is the only one where the order of queries affects the final result.*/