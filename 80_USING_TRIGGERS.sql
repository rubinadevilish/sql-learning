-- Project: SQL Learning Journey
CREATE TABLE Sales.EmployeeLogs (
LogID INT IDENTITY (1,1) PRIMARY KEY,
EmployeeID INT,
LogMessage VARCHAR (255),
LogDate DATE
)

CREATE TRIGGER trg_AfterInsertEmployee ON Sales.Employees
AFTER INSERT
AS 
BEGIN
    INSERT INTO Sales.EmployeeLogs (EmployeeID, LogMessage, LogDate)
    SELECT
        EmployeeID,
        'New Employee Added =' + CAST(EmployeeID AS VARCHAR),
        GETDATE ()
    FROM INSERTED
END

SELECT * FROM Sales.EmployeeLogs
INSERT INTO Sales.Employees
VALUES
(6, 'Maria', 'Doe', 'HR', '1988-01-12', 'F', 80000, 3)

/* TRIGGERS are special stored procedure (set of statements) that automatically runs in response to a specific event on a table or view.
    Used for maintaning audit logs.
INSERTED are virtual table that holds a copy of the rows that are being inserted into the target table*/