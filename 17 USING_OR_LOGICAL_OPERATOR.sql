-- Project: SQL Learning Journey
/* Retrieve all customers who are either from USA 
OR have a score greater than 500 */
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

/* OR Atleast one condition must be true */
