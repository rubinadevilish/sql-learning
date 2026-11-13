-- Project: SQL Learning Journey
SELECT *
INTO Sales.DBCustomers
FROM Sales.Customers

SELECT*
FROM Sales.DBCustomers
WHERE CustomerID = 1

CREATE CLUSTERED INDEX idx_DBCustomers_CustomerID
ON Sales.DBCustomers (CustomerID)

DROP INDEX idx_DBCustomers_CustomerID ON Sales.DBCustomers

CREATE NONCLUSTERED INDEX idx_DBCustomers_LastName ON Sales.DBCustomers (LastName)
CREATE INDEX idx_DBCustomers_FirstName ON Sales.DBCustomers (FirstName)

SELECT *
FROM Sales.DBCustomers
WHERE Country = 'USA' AND Score > 500

CREATE INDEX idx_DBCustomers_CountryScore ON Sales.DBCustomers (Country, Score)

CREATE CLUSTERED COLUMNSTORE INDEX idx_DBCustomers_CS ON Sales.DBCustomers 
DROP INDEX [idx_DBCustomers_CustomerID] ON Sales.DBCustomers 

DROP INDEX [idx_DBCustomers_CS] ON Sales.DBCustomers 
CREATE NONCLUSTERED COLUMNSTORE INDEX idx_DBCustomers_CS_FirstName ON Sales.DBCustomers (FirstName)


USE AdventureWorksDW2022
--HEAP
SELECT *
INTO FactInternetSales_HP
FROM FactInternetSales

--RowStore
SELECT *
INTO FactInternetSales_RS
FROM FactInternetSales

CREATE CLUSTERED INDEX idx_FactInternetSales_RS_PK ON FactInternetSales_RS (SalesOrderNumber, SalesOrderLineNumber)

--ColumnStore
SELECT *
INTO FactInternetSales_CS
FROM FactInternetSales

CREATE CLUSTERED COLUMNSTORE INDEX idx_FactInternetSales_CS_PK ON FactInternetSales_CS

USE SalesDB
CREATE UNIQUE NONCLUSTERED INDEX idx_Products_Product ON Sales.Products (Product)

SELECT *
FROM Sales.Customers
WHERE Country = 'USA'

CREATE NONCLUSTERED INDEX idx_Customers_Country On Sales.Customers (Country) 
WHERE Country = 'USA'

--List all indexes on a specific table
sp_helpindex 'Sales.DBCustomers'
-- Monitoring Index Usage

SELECT
tbl.name as TableName,
idx.name AS IndexName,
idx.type_desc AS IndexType,
idx.is_primary_key AS is_primary_key,
idx.is_unique AS IsUnique,
idx.is_disabled AS IsDisabled
FROM sys.indexes idx
JOIN sys.tables tbl
ON idx.object_id = tbl.object_id
ORDER BY tbl.name, idx.name

SELECT * From Sys.tables

/* INDEX is a data structure that provides quick access to data, optimizing the speed of your queries
    Structure {How database is organising and referencing the data} Clustered Index Non-clustered Index
    Storage {How the data is stored physically in the database} Rowstore Index Columnstore Index
    Functions Unique Index Filtered Index
HEAP is a table without clustered index 
TABLE FULL SCAN Scans the entire table page by page and row by row, searching for data.
BALANCE TREE Hierarchical structure storing data as leaves to help quickly locate data.
    Root Node Intermediate Node Leaf Node
INDEX PAGE It stores key values (Pointers) to another page. It doesn't store the actual rows.
A Primary Key automatically creates a clustered index by default. 
Only one clustered index can be created per table. Mulitple non clustered indexes allowed
Default is non clustered index if you don't mention the type
For composite index the columns of index order must match the order in your query
LEFTMOST PREFIX RULE Index works only if your query filters start from the first column in the index and follow its order.
Only one columnstore index per table and you have to decide whether it is clustered or non-clustered
Unique Index Ensures no duplicate values exist in specific column.
Filtered Index includes only rows meeting the specified conditions*/