# n<=10^5
# candles<=10^7

candles=[random(range(100000))]

def birthdayCakeCandles(candles):
    # Write your code here
    count=0
    nums=range(len(candles))
    maxi=max(candles)
    #Importante: sacar todo lo posible fuera del bucle para optimizar (sino puede que algunos casos de prueba superen el tiempo maximo permitido de ejecución).
    for i in nums:
        if candles[i]==maxi:
            count+=1
    print(count)
    return count

birthdayCakeCandles(candles)
