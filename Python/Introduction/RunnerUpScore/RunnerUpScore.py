if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    arr_sort=sorted(arr) #[2,3,5,6,6]
    la=len(arr_sort)-1
    maxn=max(arr_sort)
    for i in range(la, -1, -1): #i=4 , 3,2,1,0
        if arr_sort[i]<maxn: #i-2=2 arr=6 = maxn
            print(arr_sort[i])
            break
