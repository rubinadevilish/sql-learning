-- Project: SQL Learning Journey
/* Retrieve all customers whose score 
falls in the range between 100 and 500 */

SELECT *
FROM customers
WHERE score BETWEEN  100 AND 500

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500

-- BETWEEN checks if a value is within range 
