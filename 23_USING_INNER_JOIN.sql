-- Project: SQL Learning Journey
/* Get all customers along with their orders,
but only for customers who have placed an order */

SELECT
    C.id, 
    C.first_name, 
    O.order_id, 
    O.sales
FROM customers AS C
INNER JOIN orders AS O
ON C.id = O.customer_id

SELECT *
FROM customers;

SELECT *
FROM orders;
/* INNER JOIN Returns only matching rows from both tables */