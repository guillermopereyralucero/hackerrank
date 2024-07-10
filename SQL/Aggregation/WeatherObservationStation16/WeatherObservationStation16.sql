/*Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

SELECT  CONVERT(DECIMAL(10, 4), ROUND(MIN(lat_n), 4)) AS TotalLongW
FROM STATION 
WHERE LAT_N>38.7780; -- = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);
