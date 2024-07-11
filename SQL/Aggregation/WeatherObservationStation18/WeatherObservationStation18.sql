/*Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

Input Format

The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.*/

/*
Mia(CGPT): 83.8913
Real: 259.6859
*/

SELECT CAST(ROUND(ABS(a-c)+ABS(b-d),4) AS DECIMAL(10,4)) 
FROM (SELECT MIN(lat_n) a, 
       MIN(long_w) b,
       MAX(lat_n) c,
       MAX(long_w) d
      FROM STATION) ET;



