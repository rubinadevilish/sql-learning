-- Project: SQL Learning Journey
/* Get all customers along with their orders
including those without orders */

SELECT
    C.id, 
    C.first_name, 
    O.order_id, 
    O.sales
FROM customers AS C
LEFT JOIN orders AS O
ON C.id = O.customer_id


/* LEFT JOIN returns all rows from left and only matching from Right */