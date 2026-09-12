-- Project: SQL Learning Journey
/* Retrieve each customers from Germany */
SELECT
    id,
    first_name,
    country
FROM customers
WHERE country = 'Germany'

--Retrieve customers with a score not equal to 0 */
SELECT *
FROM customers
WHERE score ! = 0