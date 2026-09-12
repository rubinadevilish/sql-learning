-- Project: SQL Learning Journey
--{AS (ALIAS) short name assigned to column/table}

/* Find the total score for each country */
Select
    country,
    SUM(score) AS score
FROM customers
GROUP BY country

--Find the total score and total number of customers for each country 
SELECT
    country,
    SUM(score) AS total_score,
    COUNT (id) AS total_customers
FROM customers
GROUP BY country