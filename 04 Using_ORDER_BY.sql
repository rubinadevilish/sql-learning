-- Project: SQL Learning Journey
-- Retrieve all customers & sort the results by highest score first
SELECT *
FROM customers
ORDER BY score ASC

---- Retrieve all customers & sort the results by lowest score first
SELECT *
FROM customers
ORDER BY score DESC

---- Retrieve all customers & sort results by country and then by highest score
SELECT *
FROM customers
ORDER BY 
    country ASC,
    score DESC
    