-- Project: SQL Learning Journey
/* Find all customers whose first name starts with 'M' */
SELECT *
FROM customers
WHERE first_name LIKE 'M%'

/* Find all customers whose first name ends with 'N' */
SELECT *
FROM customers
WHERE first_name LIKE '%N'

/* Find all customers whose first name contains 'R' */
SELECT *
FROM customers
WHERE first_name LIKE '%R%'

/* Find all customers whose first name has 'R' in the 3rd position*/
SELECT *
FROM customers
WHERE first_name LIKE '__R%'

--LIKE search for a pattern in text