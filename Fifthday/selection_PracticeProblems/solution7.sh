numbers=()
max=0
min=999
for ((i=0;i<10;i++))
do
    a=`echo $(($RANDOM % 900 + 100 ))`
    numbers[$i]=$a
    if [ $a -gt $max ]
    then
        max=$a
        
    fi
    if [ $a -lt $min ]
    then 
        min=$a
    fi    

done
echo $max
echo $min