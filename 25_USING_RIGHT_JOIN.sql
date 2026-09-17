-- Project: SQL Learning Journey
/* Get all customers along with their orders
including orders without matching customers*/

SELECT
    C.id, 
    C.first_name, 
    O.order_id, 
    O.sales
FROM customers AS C
RIGHT JOIN orders AS O
ON C.id = O.customer_id

SELECT
    C.id, 
    C.first_name, 
    O.order_id, 
    O.sales
FROM orders AS O 
LEFT JOIN customers AS C
ON C.id = O.customer_id


/* RIGHT JOIN Returns all rows from right and only matching from left */