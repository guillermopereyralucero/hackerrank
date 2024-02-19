SELECT TOP 1 city, min(len(city))
FROM station
GROUP BY city
ORDER BY len(city),city

SELECT TOP 1 city, max(len(city))
FROM station
GROUP BY city
ORDER BY len(city) DESC,city
