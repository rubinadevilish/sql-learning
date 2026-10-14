-- Project: SQL Learning Journey
--Find total number, total sales, average sales, highest sales and lowest sales of orders

SELECT
customer_id,
COUNT (*) AS TotalOrders,
SUM (sales) AS TotalSales,
AVG (sales) AS AVGSales,
MAX (sales) as HighestSale,
MIN (sales) as LowestSale
FROM orders
GROUP BY customer_id

