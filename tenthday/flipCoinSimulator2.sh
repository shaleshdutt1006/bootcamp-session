declare -A flip
read -p "Enter how many times you want to flip the coins " flipCoin
read -p "Please enter your usecase Number " input

function flipping()
{
    for ((i=0;i<$flipCoin;i++)) 
    do
        a=$((RANDOM % 2))
        if [ $a -eq 0 ]
        then 
            echo "It is head"
        else
            echo "It is tail"
        fi    
    done    
}
flip[head]=0
flip[tail]=0
for ((i=0; i<$flipCoin; i++))
do
        a=$((RANDOM % 2)) 
        

        if [ $a -eq 0 ]
         then
                
                flip[head]=$((${flip[head]}+1))
        else
                flip[tail]=$((${flip[tail]}+1))
        fi
       
done


function singlet()
{

 echo "percentage of head comes is $((${flip[head]}*100/$flipCoin))"
 echo "percentage of tail comes is $((${flip[tail]}*100/$flipCoin))"
}
flip[HH]=0
 flip[TT]=0
 flip[HT]=0
 flip[TH]=0
for ((i=0;i<$flipCoin;i++))
do

        a=$((RANDOM % 2))
        b=$((RANDOM % 2))
        if [[ $a -eq 0 && $b -eq 0 ]]
        then
            flip[HH]=$((${flip[HH]}+1))          

        elif [[ $a -eq 0 && $b -eq 1 ]]
        then
            flip[HT]=$((${flip[HT]}+1))

        elif [[ $a -eq 1 && $b -eq 0 ]]
        then
            flip[TH]=$((${flip[TH]}+1))

        elif [[ $a -eq 1 && $b -eq 1 ]]
        then
            flip[TT]=$((${flip[TT]}+1))
        fi
done   



function doublet()
{
 
   echo "percentage of HH comes is $((${flip[HH]}*100/$flipCoin))"
   echo "percentage of HT comes is $((${flip[HT]}*100/$flipCoin))"
   echo "percentage of TH comes is $((${flip[TH]}*100/$flipCoin))"
   echo "percentage of TT comes is $((${flip[TT]}*100/$flipCoin))"
}

flip[HHH]=0
 flip[THH]=0
 flip[HTH]=0
 flip[HHT]=0
 flip[HTT]=0
 flip[THT]=0
 flip[TTH]=0
 flip[TTT]=0
for ((i=0; i<$flipCoin; i++))
do

        a=$((RANDOM % 2))
        b=$((RANDOM % 2))
        c=$((RANDOM % 2))
       
        if [[ $a -eq 0 && $b -eq 0 && $c -eq 0 ]]
        then
            flip[HHH]=$((${flip[HHH]}+1))          
            
        elif [[ $a -eq 1 && $b -eq 0 && $c -eq 0 ]]
        then
            flip[THH]=$((${flip[THH]}+1))

        elif [[ $a -eq 0 && $b -eq 1 && $c -eq 0 ]]
        then
              flip[HTH]=$((${flip[HTH]}+1))

        elif [[ $a -eq 0 && $b -eq 0 && $c -eq 1 ]]
        then
             flip[HHT]=$((${flip[HHT]}+1))

        elif [[ $a -eq 0 && $b -eq 1 && $c -eq 1 ]]
        then
             flip[HTT]=$((${flip[HTT]}+1))

        elif [[ $a -eq 1 && $b -eq 0 && $c -eq 1 ]]
        then
             flip[THT]=$((${flip[THT]}+1))

        elif [[ $a -eq 1 && $b -eq 1 && $c -eq 0 ]]
        then
             flip[TTH]=$((${flip[TTH]}+1))

        elif [[ $a -eq 1 && $b -eq 1 && $c -eq 1 ]]
        then
             flip[TTT]=$((${flip[TTT]}+1))
        
        fi
done

function triplet()
{ 
 
    echo "percentage of HHH comes is $((${flip[HHH]}*100/$flipCoin))"
   echo "percentage of THH comes is $((${flip[THH]}*100/$flipCoin))"
   echo "percentage of HTH comes is $((${flip[HTH]}*100/$flipCoin))"
   echo "percentage of HTT comes is $((${flip[HTT]}*100/$flipCoin))"
   echo "percentage of THT comes is $((${flip[THT]}*100/$flipCoin))"
   echo "percentage of TTH comes is $((${flip[TTH]}*100/$flipCoin))"
   echo "percentage of THH comes is $((${flip[THH]}*100/$flipCoin))"
   echo "percentage of TTT comes is $((${flip[TTT]}*100/$flipCoin))"
} 

declare -a arr
function findWinner()
{
arr[0]=${flip[head]}
arr[1]=${flip[tail]}
arr[2]=${flip[HH]}
arr[3]=${flip[TT]}
arr[4]=${flip[HT]}
arr[5]=${flip[TH]}
arr[6]=${flip[HHH]}
arr[7]=${flip[HTH]}
arr[8]=${flip[HTH]}
arr[9]=${flip[HHT]}
arr[10]=${flip[HTT]}
arr[11]=${flip[THT]}
arr[12]=${flip[TTH]}
arr[13]=${flip[TTT]}


for ((i=0; i<14; i++))
do
        for ((j=0; j<14-i-1; j++))
        do  
           if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
                then
                    temp=${arr[j]}
                    arr[$j]=${arr[$((j+1))]}  
                    arr[$((j+1))]=$temp
            fi
        done
done
                                       
if [ ${arr[13]} -eq ${flip[head]} ]
then
   echo "head is winner"
elif [ ${arr[13]} -eq ${flip[tail]} ]
then
    echo "tail is winner"
elif [ ${arr[13]} -eq ${flip[HH]} ]
then
    echo "HH is winner"
elif [ ${arr[13]} -eq ${flip[HT]} ]
then
    echo "HT is winner"
elif [ ${arr[13]} -eq ${flip[TH]} ]
then
    echo "TH is winner"
elif [ ${arr[13]} -eq ${flip[TT]} ]
then
    echo "TT is winner"          
elif [ ${arr[13]} -eq ${flip[HHH]} ]
then
    echo "HHH is winner"
elif [ ${arr[13]} -eq ${flip[HTH]} ]
then
    echo "HTH is winner"
elif [ ${arr[13]} -eq ${flip[HHT]} ]
then
    echo "HHT is winner"
elif [ ${arr[13]} -eq ${flip[HTT]} ]
then
    echo "HTT is winner"
elif [ ${arr[13]} -eq ${flip[THT]} ]
then
    echo "THT is winner"
elif [ ${arr[13]} -eq ${flip[TTH]} ]
then
    echo "TTH is winner"
elif [ ${arr[13]} -eq ${flip[TTT]} ]
then
    echo "TTT is winner"
fi
}
if [ $input -eq 1 ]
then 
      flipping
elif [ $input -eq 2 ]
then 
      singlet
elif [ $input -eq 3 ]
then
     doublet
elif [ $input -eq 4 ]
then
    triplet
elif [ $input -eq 5 ]
then
    findWinner    
else
   echo "Please enter valid input"    
fi
