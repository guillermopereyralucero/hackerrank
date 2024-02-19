SELECT city 
FROM station
WHERE city LIKE '%[^a^e^i^o^u]' 
GROUP BY city
