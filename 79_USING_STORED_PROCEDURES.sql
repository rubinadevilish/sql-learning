-- Project: SQL Learning Journey
-- Step 1: Write a Query
-- For US Customers Find the Total Number of Customers and the Average Score

SELECT
    COUNT (*) TotalCustomers,
    AVG (Score) AvgScore
FROM Sales.Customers
WHERE country = 'USA'

-- Define Stored Procedure
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR (50) = 'USA'
AS
BEGIN
    BEGIN TRY

        DECLARE @TotalCustomers INT, @AvgScore FLOAT;
        -- ====================
        -- Step 1: Prepare & Cleanup Data
        -- ====================
        IF EXISTS (SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country = @Country)
        BEGIN
            PRINT ('Updating NULL SCORES TO 0');
            UPDATE Sales.Customers
            SET Score = 0
            WHERE Score IS NULL AND Country = @Country;
        END

        ELSE
        BEGIN
            PRINT ('No NULL Scores found')
        END;

        -- ====================
        --Step 2: Generating Reports
        -- ====================
        -- Calculate Total Customers and Average Score for specific country
        SELECT
            @TotalCustomers = COUNT (*),
            @AvgScore = AVG (Score)
        FROM Sales.Customers
        WHERE country = @Country 

        PRINT 'Total Customers from' + @Country + ':' + CAST (@TotalCustomers AS NVARCHAR);
        PRINT 'Average Score from' + @Country + ':' + CAST (@AvgScore AS NVARCHAR);

        --Calculate the total number of Orders and Total Sales for specific country
        SELECT
        COUNT (OrderID) TotalOrders,
        SUM (Sales) TotalSales
        FROM Sales.Orders o
        JOIN Sales.Customers c
        ON c.CustomerID = o.CustomerID
        WHERE C.Country = @Country;

    END TRY
    BEGIN CATCH
        -- ====================
        -- Error handling
        -- ====================
        PRINT ('An error occurred');
        PRINT ('Error Message:' + ERROR_MESSAGE ());
        PRINT ('Error Number:' + CAST (ERROR_NUMBER () AS NVARCHAR));
        PRINT ('Error Line:' + CAST (ERROR_LINE () AS NVARCHAR));
        PRINT ('ERROR Procedure' + ERROR_PROCEDURE());
    END CATCH
    END
GO

-- Step 3: Execute the Stored Procedure
EXEC GetCustomerSummary @Country = 'Germany'
EXEC GetCustomerSummary

DROP PROCEDURE GetCustomerSummary



/* PARAMETERS Placeholders used to pass values as input from the caller to the procedure, allowing dynamic data to be processed.
Variables temporarily store and manipulate data during its execution. */