-- Project: SQL Learning Journey

--Find the average scores of the customers
SELECT
CustomerID,
Score,
AVG (SCORE) OVER () AvgScores,
AVG (COALESCE (SCORE, 0)) OVER () AVGScores2
FROM sales.Customers

/* Display the full name of customers in a single field by merging their 
first and last names, and add 10 bonus points to each customer's score. */
SELECT
CustomerID,
FirstName,
LastName,
FIRSTNAME + ' ' + COALESCE (LastName, '') AS FullName,
Score,
COALESCE (SCORE, 0) + 10 AS ScoreWithBonus
FROM Sales.customers

--Sort the customers from lowest to highest scores, with NULLs appearing last.
SELECT
CustomerID,
Score
FROM Sales.customers
Order BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, SCORE ASC

/*ISNULL COALESCE USE CASES
    Handle the NULL before doing data aggregations
    Handle the NULL before doing mathematical operations
    Handle the NULL before JOINING tables
    Handle the NULL before sorting the data */