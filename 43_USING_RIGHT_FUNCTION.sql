-- Project: SQL Learning Journey
-- Retrieve the last two characters of each first name

SELECT
    first_name,
    LEFT (TRIM (first_name), 2) first_2_char,
    RIGHT (first_name, 2) last_2_char
FROM customers