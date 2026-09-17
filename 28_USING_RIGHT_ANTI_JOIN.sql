--Project: SQL Learning Journey
/*Get all orders without matching customers */
SELECT *
FROM customers AS C
RIGHT JOIN orders AS O
ON c.id = o.customer_id
WHERE c.id IS NULL

SELECT *
FROM orders AS O
LEFT JOIN customers AS C
ON c.id = o.customer_id
WHERE c.id IS NULL

/* RIGHT ANTI JOIN returns row from right that has no match in left */