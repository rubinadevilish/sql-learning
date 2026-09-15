-- Project: SQL Learning Journey
/* Retrieve all customers from Germany */

Select *
FROM customers
WHERE country = 'Germany'

/* Retrieve all customers who are not from Germany */
SELECT *
FROM customers
WHERE country <> 'Germany'
SELECT *
FROM customers
WHERE country != 'Germany'

--Retrieve all customers with a score greater than 500
Select *
FROM customers
 WHERE score > 500

 -- Retrieve all customers with a score of 500 or more
 SELECT *
 FROM customers
 WHERE score > = 500

 --Retrieve all customers with a score less than 500
SELECT *
 FROM customers
 WHERE score < 500
 
 --Retrieve all customers with a score less of 500 or less
SELECT *
 FROM customers
 WHERE score < = 500

/* = Checks if two values are equal
 Column 1 = Column 2    first_name = last_name
Column 2 = Value          first_name = 'John'
Function = Value          UPPER (first_name) = 'John'
Expression = Value        Price * Quantity = 1000
Subquery = Value          (SELECR AVG (Sales)
                          FROM orders) = 1000

 <> != Checks if two values are not equal

 > Checks if a value if greater than another value

 >= Checks if a value is greater than or equal to another value

 < Checks if a value is less than another value

<= Checks if a value is less than or equal to another value

