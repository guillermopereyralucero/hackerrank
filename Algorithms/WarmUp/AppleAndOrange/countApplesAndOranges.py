s,t,a,b,apples,oranges=7,11,5,15,[-2,2,1],[5,-6]

def countApplesAndOranges(s, t, a, b, apples, oranges):
    # Write your code here
    #s=c1 t=c2 a=applet b=oranget apples=[] oranges=[]
    contA=0
    contO=0
    for i in range(len(apples)):
        distA=a+apples[i]
        if distA>=s and distA<=t:
            contA+=1
    for i in range(len(oranges)):
        distO=b+oranges[i]
        if distO>=s and distO<=t:
            contO+=1
    print(contA)
    print(contO)
    return contA,contO


countApplesAndOranges(s, t, a, b, apples, oranges)
