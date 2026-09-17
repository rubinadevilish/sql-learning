-- Project: SQL Learning Journey
--Get all customers who haven't placed any order */
SELECT *
FROM customers AS C
LEFT JOIN orders AS O
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

/* LEFT ANTI JOIN returns row from left that has no match in right */