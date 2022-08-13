declare -a bowler
declare -a batsman
echo "Enter three batsmen and three bowlers "
read -p "Enter first batsman " batsman1
read -p "Enter Second batsman " batsman2
read -p "Enter Third batsman " batsman3
read -p "Enter first bowler " bowler1
read -p "Enter second bowler " bowler2
read -p "Enter third bowler " bowler3
batsman[0]=$batsman1
batsman[1]=$batsman2
batsman[2]=$batsman3
bowler[0]=$bowler1
bowler[1]=$bowler2
bowler[2]=$bowler3

function checkDuplicatesInBoth(){
for ((i=0;i<3;i++))
do
        for ((j=0;j<3;j++))         
        do
        if [[ "${batsman[i]}" == "${bowler[$j]}" ]]
        then
            echo "Sorry ${batsman[$i]} should not be in both arrays" 
        fi
        done
done  
}
function checkDuplicates()
{   
type=$1
for ((i=0;i<3;i++))
do
        for ((j=i+1;j<3;j++))
        do
            if [ "$type" == "batsman" ]
                then
                if [[ "${batsman[i]}" == "${batsman[$j]}" ]]
                then
                    echo "Sorry ${batsman[$i]} is already present"
                fi
            else
                if [[ "${bowler[i]}" == "${bowler[$j]}" ]]
                then
                    echo "Sorry ${bowler[$i]} is already present "
                fi

            fi
        done
done 
}
checkDuplicatesInBoth
checkDuplicates "batsman" 
checkDuplicates "bowler"



