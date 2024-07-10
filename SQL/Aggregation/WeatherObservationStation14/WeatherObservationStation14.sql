/*Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

SELECT 
    CAST(ROUND(MAX(lat_n), 4) AS DECIMAL(10, 4)) AS TotalLatN
FROM STATION
WHERE lat_n<137.2345;
