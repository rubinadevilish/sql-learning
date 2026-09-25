-- Project: SQL Learning Journey
-- Calculate the length of each customer's first name

Select
first_name,
LEN (first_name) AS length
FROM customers