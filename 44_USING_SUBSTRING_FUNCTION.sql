-- Project: SQL Learning Journey
-- Retrieve a list of customers' first names removing the first character

Select
    first_name,
    SUBSTRING (TRIM (first_name), 2, LEN (first_name)) AS sub_name
FROM customers