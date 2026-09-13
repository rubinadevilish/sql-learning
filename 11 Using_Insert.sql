-- Project: SQL Learning Journey
/* Optional if no columns specified, SQL expects values for all columns.
Must match the number of columns and values. Columns and values must be in the same order */

INSERT Into customers (id, first_name, country, score)
VALUES 
    (6, 'Anna', 'USA', NULL),
    (7,'Sam', Null, 100)
    (8, 'USA', 'DAKSH', NULL)
    (9, 'Raginee', 'Japan', NULL)

--Insert data from customers into persons
INSERT into persons (id, person_name, birth_date, email)
SELECT
    id,
    first_name,
    NULL,
    'Unknown'
FROM customers

SELECT * FROM customers
SELECT * FROM persons