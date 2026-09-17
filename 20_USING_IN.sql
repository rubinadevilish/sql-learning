-- Project: SQL Learning Journey
/* Retrieve all customers from either Germany or USA */

SELECT *
FROM customers
WHERE country IN ('GERMANY', 'USA')

SELECT *
FROM customers
WHERE country = 'GERMANY' or country = 'USA'  

/* IN checks if a value exists in a list
Use IN instead of OR for mulitple values in the same column to simplify SQL */