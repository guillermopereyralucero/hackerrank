grades=[36,47,49,59,97,95,94]

def gradingStudents(grades):
  n=len(grades)
  for i in range(n):
    if grades[i]>37:
      if grades[i]%5>2:
        grades[i]=round(grades[i]/5)*5
  print(grades)
  return grades

gradingStudents(grades)
