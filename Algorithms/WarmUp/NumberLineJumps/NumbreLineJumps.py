x1,v1,x2,v2=21,6,47,3
#x1,v1,x2,v2=0,3,4,2

"""
def kangaroo(x1, v1, x2, v2):
    # Además de ser el punto inicial, x1 y x2 corresponden a la sumatoria de distancia de cada canguro 
    # Casos posibles
    if ((x1>x2) and (v1<v2)) or ((x1==x2) and (v1==v2)) or ((x1<x2) and (v1>v2)):
        while x1!=x2:
            x1+=v1
            x2+=v2  
            print(x1,x2)  
    # Casos imposibles
    else:
        print('NO')
        return 'NO'    
    # Para casos posibles
    print('YES')
    return 'YES'
    """
    
def kangaroo(x1, v1, x2, v2):
    # Casos imposibles
    if (v1 == v2) and (x1 != x2):
        print('NO')
        return 'NO'
    # Casos posibles
    if (x1 - x2) % (v2 - v1) == 0:
        print('YES')
        return 'YES'
    else:
        print('NO')
        return 'NO'    

kangaroo(x1, v1, x2, v2)
