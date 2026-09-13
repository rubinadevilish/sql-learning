-- Project: SQL Learning Journey
/* Add a new column called email to persons table */

ALTER TABLE persons
ADD email VARCHAR (50) NOT NULL

--Remove the column phone from the persons table
ALTER TABLE persons
DROP COLUMN phone

SELECT * FROM persons