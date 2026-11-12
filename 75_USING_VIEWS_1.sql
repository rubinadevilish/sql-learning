-- Project: SQL Learning Journey
IF OBJECT_ID ('Sales.V_Monthly_Summary', 'V') IS NOT NULL
    DROP VIEW Sales.V_Monthly_Summary;
GO
CREATE VIEW Sales.V_Monthly_Summary AS
(
SELECT
DATETRUNC (month, OrderDate) OrderMonth,
SUM (Sales) Totalsales,
COUNT (OrderID) Totalorders,
SUM (Quantity) TotalQuantities
FROM Sales.Orders
GROUP BY DATETRUNC (month, OrderDate)
)


/* VIEW is a virtual table that shows data without storing it physically.
 Views are persisted SQL queries in the database.
 If a Table or View is created without specifying a schema, it defaults to the DBO
 Views can be use to hide the complexity of database tables and offers users more friendly and easy-to-consume objects.
 Use views to enforce security and protect sensitive data, by hiding columns and/or rows from tables. */