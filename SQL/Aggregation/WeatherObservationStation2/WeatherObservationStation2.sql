/*Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
Input Format

The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

Output Format

Your results must be in the form:

lat lon
where lat is the sum of all values in LAT_N and lon is the sum of all values in LONG_W. Both results must be rounded to a scale of 2 decimal places.*/

SELECT 
    CAST(ROUND(SUM(lat_n), 2) AS DECIMAL(10, 2)) AS TotalLatN,
    CAST(ROUND(SUM(long_w), 2) AS DECIMAL(10, 2)) AS TotalLongW
FROM STATION;

