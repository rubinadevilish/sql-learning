-- Project: SQL Learning Journey
--Convert the first name to lowercase

SELECT
    first_name,
    country,
CONCAT (first_name, ' ', country) AS name_country,
LOWER (first_name) AS low_name
FROM customers