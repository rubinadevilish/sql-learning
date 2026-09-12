-- Project: SQL Learning Journey
-- HAVING filters data with aggregation can be used only with GROUP BY
/* If you want to filter the data before aggregation i.e. you want to filter the 
original data, you can go ahead and use WHERE clause. But if you want to filter 
the data after the aggregations i.e. after GROUP BY then you can use having */

/* Find the average score for each country considering only customers with a score 
not equal to 0 and return only those countries with average score greater than 430*/

Select
    country,
    AVG (score) AS avg_score
FROM customers
WHERE score ! = 0
GROUP BY country
HAVING AVG (score) > 430