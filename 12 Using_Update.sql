-- Project: SQL Learning Journey
/* Always use WHERE to avoid updating all rows unintentionally */

/* Change the score of customer 6 to 0 */

UPDATE customers
 SET score = 0
 WHERE id = 6

/* Change the score of customer 9 to 0 and update country to UK */
UPDATE customers
    SET score  = 0,
    country = 'Spain'
WHERE id = 9

/* Update all customers with a null score by setting their score to 0 */
UPDATE customers
    SET score = 0
    WHERE score is NULL

SELECT *
FROM customers
