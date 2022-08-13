head=0
tail=0

while [[ $tail -lt 21 && $head -lt 21 ]]
do 
    a=$((RANDOM % 2)) 
    if [ $a -eq 0 ]
    then
        head=$((head+1))
    else
        tail=$((tail+1))
    fi
done
echo $tail
echo $head

Result1=$((head-tail))
Result2=$((tail-head))

if [[ $head -eq 21  && $tail -eq 21 ]]
then 
     
     echo "there is a tie"
     while [ true ]
     do
        a=$((RANDOM % 2)) 
        if [ $a -eq 0 ]
        then
            head=$((head+1))
        else
            tail=$((tail+1))
        fi
        diff1=$((head-tail))    
        diff2=$((tail-head)) 
        if [ $diff1 -eq 2 ]
        then 
            echo "head won by 2"
            break
        fi
        if [ $diff2 -eq 2 ]
        then 
            echo "tail won by 2"
            break
        fi       
    done
   
     
elif [ $head -eq 21 ]
then
     echo "head won by $Result1"    
else 
     echo "tail won by $Result2"    
fi


