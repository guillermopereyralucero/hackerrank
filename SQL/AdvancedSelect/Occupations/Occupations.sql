SELECT [Doctor], [Professor], [Singer], [Actor]
FROM (SELECT Name,Occupation,ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS rn
      FROM OCCUPATIONS) AS sub
PIVOT 
(MAX(Name) FOR Occupation IN ([Doctor], [Professor], [Singer], [Actor])) AS pivot_table
ORDER BY rn;
