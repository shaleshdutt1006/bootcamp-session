numbers=()
max=0
maxtwo=0
min=999
mintwo=999
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
for ((i=0;i<10;i++))
do
         
        if [[ ${numbers[i]} -gt $maxtwo && ${numbers[i]} -ne $max ]]
        
        then
                maxtwo=${numbers[i]}
        fi         
        if [[ ${numbers[i]} -lt $mintwo && ${numbers[i]} -ne $min ]]
    then
        mintwo=${numbers[i]}     
    fi      
        
done
echo "The Second largest Number is $maxtwo"
echo "The second smallest number is $mintwo"




