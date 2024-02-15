#INCONCLUSO 






recu() {
    local n=$1
    echo "Recu ok"
    tv=64 # Es lo mismo que 63+1
    th=100
    #luego de la row(i) 31 empieza la V (32)
    h=$(2**(5-$m)) #Defino altura de cada tramo (V e I)
    kvi=$(($tv/2)/(2**$n)) #Defino posición vertical de inicio 
    kvf=$(($tv/2)/(2**$n) + $kvi/2) #Defino posición vertical de final
    
    for ((i=1; i<$tv; i++))
    do
        if [ $i -ge $kvi -a $i -lt $kvf ] #Delimito h = altura de V (para n=1 es h=16 de 32 a 47 ambos incluidos)
        then
            #kd=66 #Esto es 34 + 32
            for ((j=1; j<=$th; j++))
            do
                if [[ $j -eq $ki ]] || [[ $j -eq $kd ]]
                then
                    echo -n "1"
                else
                    echo -n "_" #"$ki y $j" #
                fi
            done
            echo ""
            let ki+=1
            let kd-=1
        fi
        #Luego de la row 47 empieza la I (48)
        if [ $i -ge $kvf ] #Posición vertical
        then
            for ((j=1; j<=$th; j++))
            do
                if [ $j -eq $th/2 ] #Posición horizontal
                then
                    echo -n "1"
                else
                    echo -n "_"
                fi
            done
            echo ""
        fi
    done
    }


read n
# Row=63 Col=100      
ki=$(( th / 2 )) #Inicio izquierdo
kd=$(( th / 2 )) #Inicio derecho
for ((m=1; m<=$n; m++)) #Bucle hasta el "n" ingresado
do
    ki=$(($ki-(2**(5-$m)))) #ki cambiante según vuelta de bucle 
    kd=$(($kd+(2**(5-$m)))) #kd cambiante según vuelta de bucle 

    #Desde 1 hasta n<=5
    for ((l=1; l<=n; l++))
    do
        #INICIO DE BUCLE SI n=1
        if [ $n -eq 1 ]
        then
            echo "Inicio de bucle n=1, TV: $tv"
        #100 Guiones bajos hasta la 31 (incluida) y luego salto de linea
            for ((i=1; i< tv; i++))
            do 
                echo "Inicio de for 1"
                if [ $i -lt $(($tv/2)-1) ]
                then 
                    for (( j = 1; j <= th; j++ ))
                    do 
                    echo -n "_" 
                    done
                    echo ""
                fi
            #luego de la row 31 empieza la V (32)
                recu $n
                echo "Recu exit ok"
            done
        fi  #FIN DE BUCLE SI n=1
    done
done

