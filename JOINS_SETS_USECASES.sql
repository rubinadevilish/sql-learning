-- Project: SQL Learning Journey



/* For SET operators same number of columns, for JOINS operators key column is needed
JOINS combine data horizontally by matching columns across different tables, while SQL SET operators 
combine data vertically by stacking rows from separate query results on top of each other.

WHEN TO USE JOINS
    Recombine data i.e. Complete Big Picture INNER LEFT FULL
    Data enrichment i.e. Getting extra data LEFT 
    Check for existence i.e. Filtering data through lookup table INNER LEFT+WHER FULL+WHERE
Only Matching Tables INNER JOIN
ALL ROWS if one side i.e master table LEFT JOIN if both sides important FULL JOIN
ONLY UNMATCHING if one side i.e master table LEFT ANTI JOIN if both sides important FULL ANTI JOIN

Rules of SET OPERATOR
    SET Operator can be used in almost all clauses i.e. WHERE JOIN GROUPBY HAVING
    Except ORDER BY which is allowed only once at end of query
    The number of columns in each rule must be same.
    Data types of columns in each query must be compatible
    The order of columns in each query must be the same
    The column names in the result set are detemrined by the column names specified in the first query
    Even if all rules are met and SQL shows no errors, the result maybe incorrect.
    Incorrect column selection leads to inaccurate results
USE CASES OF SET OPERATORS
    UNION UNION ALL Combine similar information before analysing the data
    Never use an asterisk to combine tables, list needed columns instead
    Include additional column to indicate the source of each row

    EXCEPT Identifying  differences of changes (delta) between two batches of data.
    Can be used to compare tables to detect discrepancies between databases */



