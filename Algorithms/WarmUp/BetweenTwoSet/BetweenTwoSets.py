a,b=[2,4],[16,32,96]


def getTotalX(a, b):
    c=a+b
    resp,respa,respb=[],[],[]
    minc,maxc=min(c),max(c)
    l=len(a)
    m=len(b)
    n=len(c)
    print(c,minc,maxc,n)
    for num in range(minc,(maxc+1)):
        print(num)
        conta=0
        contb=0
        for i in range(l):
            if num%a[i]==0:
                conta+=1
                print('conta: ',conta,'num: ',num,'i: ',i,'a[i]: ',a[i],'num/ai: ',num%a[i])
                if conta==l:
                    respa.append(num)
                    print('num añadido a respa')
        for j in range(m):
            if b[j]%num==0:
                contb+=1
                print('contb: ',contb,'num: ',num,'j: ',j,'b[j]: ',b[j],'bj/num: ',b[j]%num)
                if contb==m:
                    respb.append(num)
                    print('num añadido a respb')
    seta=set(respa)
    setb=set(respb)
    setr=seta & setb
    resp=list(setr)
    print(respa,respb,resp,len(resp))
    return len(resp)

getTotalX(a, b)
