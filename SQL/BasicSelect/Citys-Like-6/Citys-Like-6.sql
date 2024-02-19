SELECT city 
FROM station
WHERE city NOT LIKE '[aeiou]%' OR city NOT LIKE '%[aeiou]' 
GROUP BY city
