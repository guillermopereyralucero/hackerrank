arr=[1,2,3,4,5]

def miniMaxSum(arr):
    # Write your code here
    mini=[]
    maxi=[]
    minisum=0
    maxisum=0
    for i in range(5):
        if arr[i]<max(arr) and len(mini)<4:
            mini.append(arr[i])
        elif arr[i]==min(arr) and len(mini)<4:
            mini.append(arr[i])
        if arr[i]>min(arr) and len(maxi)<4:
            maxi.append(arr[i])
        elif arr[i]==max(arr) and len(maxi)<4:
            maxi.append(arr[i])
    mini.sort()
    maxi.sort()
    for i in range(4): minisum+=mini[i]
    for i in range(4): maxisum+=maxi[i]
    print(minisum,maxisum)


minmaxsum(arr)


