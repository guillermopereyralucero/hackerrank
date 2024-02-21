SELECT FORMAT(ROUND(long_w, 4),'0.####')
FROM station
WHERE lat_n = (SELECT MIN(lat_n)
               FROM STATION
               WHERE lat_n > 38.7780);
