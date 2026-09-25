-- Project: SQL Learning Journey
/* Find customers whose first name contains leading or trailing spaces */

SELECT
    first_name,
    country,
CONCAT (first_name, ' ', country) AS name_country,
LOWER (first_name) AS low_name,
UPPER (first_name) AS up_name
FROM customers
WHERE first_name ! = TRIM (first_name)

SELECT
    first_name,
    LEN (first_name) len_name,
    LEN (TRIM (first_name)) len_trim_name,
    LEN (first_name) - LEN (TRIM (first_name)) flag
FROM customers
WHERE LEN (first_name) ! =  LEN (TRIM (first_name))
