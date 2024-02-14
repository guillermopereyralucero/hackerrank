read nt
sum=0
for ((i=1; i<=$nt; i++)); do 
    read nx
    sum=$(( $sum + $nx ))
done
total=$(echo "scale=10; $sum / $nt" | bc)
printf '%.*f\n' 3 $total
