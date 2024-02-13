read x 
read y 
read z
if [[ $x -eq $y && $x -eq $z ]]
then
    echo "EQUILATERAL"
elif [[ $x -eq $y || $x -eq $z || $y -eq $z ]]
then
    echo "ISOSCELES"
elif [[ $x -ne $y && $x -ne $z && $y -ne $z ]]
then
    echo "SCALENE"
fi
