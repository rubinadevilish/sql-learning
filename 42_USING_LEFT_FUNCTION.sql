-- Project: SQL Learning Journey
-- Retrieve the first two characters of each first name

SELECT
    first_name,
    LEFT (TRIM (first_name), 2) first_2_char
FROM customers


