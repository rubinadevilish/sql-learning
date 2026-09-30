-- Project: SQL Learning Journey
/* Generate a report showing the total sales for each category:
- High: If the sales higher than 50
- Medium: If the sales between 20 and 50 
- Low: If the sales equal or lower than 20
Sort the categories from highest to lowest */
SELECT
Category,
SUM(Sales) AS TotalSales
FROM(
    Select
    OrderID,
    Sales,
    CASE WHEN Sales > 50 THEN 'High' 
        WHEN Sales > 20 THEN 'Medium'
        ELSE 'Low'
        END Category
        From Sales.Orders
)t
GROUP BY Category 
ORDER BY TotalSales DESC

--Retrieve employee details with gender displayed as full text
SELECT 
EmployeeID,
FirstName,
LastName,
CASE WHEN GENDER = 'F' THEN 'FEMALE' WHEN GENDER = 'M' THEN 'MALE' ELSE 'NA' END 'Gender'
FROM Sales.Employees

--Retrive customers details with abbreviated country calling code
SELECT
CustomerID,
FirstName,
LastName,
Country,
CASE COUNTRY WHEN 'Germany' THEN '+49' WHEN 'USA' THEN '+1' ELSE 'NA' END 'ISDCode'
FROM Sales.Customers

--Find the average scores of customers and treat Nulls as O And additional provide details such CustomerID & LastName
SELECT
CustomerID,
LastName, 
CASE WHEN Score IS NULL THEN 0 ELSE Score END ScoreClean,
AVG (CASE WHEN Score IS NULL THEN 0 ELSE Score END) OVER () AvgCustomerClean
FROM Sales.Customers

--Count how many times each customer has made an order with sales greater than 30.
SELECT
CustomerID,
SUM (CASE WHEN SALES > 30 THEN 1 ELSE 0 END) SalesFlag,
COUNT (*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID ORDER BY SalesFlag DESC
/* CASE STATEMENT Evaluates a list of conditions and returns a value when the first condition is met 
    CASE start of logic 
    WHEN condition to be evaluated 
    THEN Result if the condition is true
    ELSE if none of the when conditions are true
Purpose of CASE STATEMENT: is data transformation by creating new columns based on existing data,
Transform the values from one form to another, replace NULLs with specific value, apply aggregate 
functions only on subsets of data that fulfull certain 
The data type of results must be matching*/