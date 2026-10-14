--Project: SQL Learning Journey
-- Find the total sales across all orders
SELECT
SUM (Sales) AS TotalSales
FROM Sales.Orders

-- Find the total sales for each product
SELECT
    ProductID,
    SUM (Sales) AS TotalSales
FROM Sales.Orders
GROUP BY ProductID

---Find the total sales for each combination of product and order status
SELECT
    OrderID,
    OrderDate,
    ProductID,
    OrderStatus,
    Sales,
    SUM (Sales) OVER () AS TotalSales,
    SUM (Sales) OVER (PARTITION BY ProductID) SalesByProducts,
    SUM (Sales) OVER (PARTITION BY ProductID, OrderStatus) AS SalesByProductsAndStatus
FROM Sales.Orders
