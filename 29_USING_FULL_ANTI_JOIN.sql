--Project: SQL Learning Journey
/*Find customers without orders and orders without customers */

SELECT *
FROM customers AS C
FULL JOIN orders AS O
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL


/* FULL ANTI JOIN returns row that that has no match in either tables */