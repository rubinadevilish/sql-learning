-- Project: SQL Learning Journey
-- Generate all possible combinations of customers and orders */
SELECT *
FROM customers
CROSS JOIN orders

/* Combines every row from left with every row from right. 
All possible combinations i.e. Cartesian Join*/