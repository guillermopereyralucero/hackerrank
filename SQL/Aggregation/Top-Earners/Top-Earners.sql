/*We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:



where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

Sample Input



Sample Output

69952 1
Explanation

The table and earnings data is depicted in the following diagram: 

The maximum earnings value is . The only employee with earnings  is Kimberly, so we print the maximum earnings value () and a count of the number of employees who have earned  (which is ) as two space-separated values.

*/

SELECT MAX(TotalEarnings) MaxEarnings, COUNT(*) EmployeeCount
FROM (SELECT employee_id, (months*salary) TotalEarnings FROM Employee) EarningsTable
WHERE TotalEarnings=(SELECT MAX(months*salary) FROM Employee);



To solve the problem on HackerRank about calculating the maximum earnings of employees and the count of employees who earn that maximum, you need to follow these steps:

Calculate the total earnings for each employee.
Find the maximum total earnings.
Count how many employees have this maximum total earnings.
Here's the SQL query to achieve this:

sql
Copiar código
SELECT 
    MAX(TotalEarnings) AS MaxEarnings,
    COUNT(*) AS EmployeeCount
FROM (
    SELECT 
        employee_id,
        (months * salary) AS TotalEarnings
    FROM Employee
) AS EarningsTable
WHERE TotalEarnings = (SELECT MAX(months * salary) FROM Employee);
Explanation
Subquery EarningsTable:

Calculates the total earnings for each employee by multiplying months and salary.
Main Query:

Finds the maximum total earnings from EarningsTable.
Counts the number of employees who have these maximum total earnings.
By running this query, you will get the maximum earnings and the number of employees who earn that maximum, as required by the problem statement.
