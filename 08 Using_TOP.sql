-- Project: SQL Learning Journey
-- TOP (Limit) restrict the number of rows returned

/* Retrieve only 3 customers*/
SELECT TOP 3 *
FROM customers

/* Retrieve top 3 customers with highest score*/
SELECT TOP 3 *
FROM customers
ORDER BY score DESC

/* Retrieve lowest 3 customers based on score*/
SELECT  TOP 3 *
FROM customers
ORDER BY score ASC

/*Get the 2 most recent orders*/
Select TOP 3*
FROM orders
ORDER BY order_date DESC