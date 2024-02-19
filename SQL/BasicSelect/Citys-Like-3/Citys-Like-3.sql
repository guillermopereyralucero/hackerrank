SELECT city 
FROM station
WHERE city LIKE '[aeiou]%[aeiou]' 
GROUP BY city
