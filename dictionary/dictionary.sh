 declare -A dice
  while ( true) 
  do
        a=$((RANDOM % 6)) 
        if [ $a -eq 1 ]
        then
         dice[1]=$((${dice[1]}+1))
        elif [ $a -eq 2 ]
        then
         dice[2]=$((${dice[2]}+1))        
        elif [ $a -eq 3 ]
        then
         dice[3]=$((${dice[3]}+1))
        elif [ $a -eq 4 ]
        then
         dice[4]=$((${dice[4]}+1))
        elif [ $a -eq 5 ]
        then
         dice[5]=$((${dice[5]}+1))
        elif [ $a -eq 6 ]
        then
         dice[6]=$((${dice[6]}+1))
        fi
        if [[ ${dice[1]} -eq 10 || ${dice[2]} -eq 10 || ${dice[3]} -eq 10 || ${dice[4]} -eq 10 || ${dice[5]} -eq 10 || ${dice[6]} -eq 10 ]]
        then
            break
        fi
done

echo ${dice[1]}
echo ${dice[2]}
echo ${dice[3]}
echo ${dice[4]}
echo ${dice[5]}
echo ${dice[6]}
# for ((times=0; times<6; times++))
# do
#       if [ ${dice[$a]} -eq ${dice[$i]} ]
      
#       then
#       times=$times+1
#       echo ${dice[$a]}

#        fi
# done












month=$((RANDOM % 12)) 


