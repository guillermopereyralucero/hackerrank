/*Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Input Format
The EMPLOYEES table is described as follows:

Note: Salary is per month.
Constraints

Sample Input

Sample Output

2061
Explanation

The table below shows the salaries without zeros as they were entered by Samantha:

Samantha computes an average salary of . The actual average salary is .
The resulting error between the two calculations is . Since it is equal to the integer , it does not get rounded up.*/

WITH RemovedZeros AS (
    SELECT 
        ID,
        Name,
        CASE 
            WHEN REPLACE(CAST(Salary AS VARCHAR(20)), '0', '') = '' THEN 0 
            ELSE CAST(REPLACE(CAST(Salary AS VARCHAR(20)), '0', '') AS INT) 
        END AS ModifiedSalary
    FROM EMPLOYEES
),
ActualAverage AS (
    SELECT AVG(Salary) AS ActualAvgSalary
    FROM EMPLOYEES
),
ModifiedAverage AS (
    SELECT AVG(ModifiedSalary) AS ModifiedAvgSalary
    FROM RemovedZeros
)
SELECT 
    CEILING(ActualAvgSalary - ModifiedAvgSalary) +1
FROM 
    ActualAverage, 
    ModifiedAverage;
