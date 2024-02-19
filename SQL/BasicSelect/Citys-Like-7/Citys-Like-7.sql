SELECT city 
FROM station
WHERE city NOT LIKE '[aeiou]%' AND city NOT LIKE '%[aeiou]'
GROUP BY city
