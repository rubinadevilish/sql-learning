-- Project: SQL Learning Journey
/* Remove dashes (-) from a phone number */

Select
'123-456-7890' AS phone,
REPLACE ('123-456-7890', '-', '_') AS clean_phone

-- Replace file extension from txt to csv
Select
'report.txt' AS old_filename,
REPLACE ('report.txt', '.txt', '.csv') AS new_filename
