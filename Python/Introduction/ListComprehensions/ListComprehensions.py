if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())
    i,j,k=0,0,0
    coordenadas=[[i, j, k] for i in range(x+1) for j in range(y+1) for k in range(z+1)]
    filtradas=[coordenada for coordenada in coordenadas if sum(coordenada)!=n]
    print(filtradas)
