min=1000
max=0
for((i=0;i<5;i++))
do
    a=`echo "$((RANDOM % 1000))"`
    if [ $a -gt $max ]
    then
        max=$a
    fi
    if [ $a -lt $min ]
    then 
        min=$a 

    fi
done

echo $min
echo $max


