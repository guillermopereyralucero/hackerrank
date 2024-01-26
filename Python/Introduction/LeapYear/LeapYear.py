def is_leap(year):
    leap=False
    #Divisible por 4? 
    if year%4==0:
    #Divisible por 100?
        if year%100!=0:
            leap=True
    #Divisible por 400? 
        if year%400==0:            
            leap=True
    return leap

year = int(input())
