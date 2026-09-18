-- Project: SQL Learning Journey
--Combine the data from employees and customers into one table, including duplicates
SELECT
    FirstName,
    LastName
FROM Sales.Customers
UNION ALL
SELECT
    FirstName,
    LastName
FROM Sales.Employees


/* UNION ALL Returns all rows from both queries, including duplicates.
UNION ALL is generally faster than UNION. 
If you are confident there are no duplicates, use UNION ALL*/
