declare -a logic
declare -A arithmetic
read -p "Enter the value of a " a 
read -p "Enter the value of b " b
read -p "Enter the value of c " c
first=$((a+b*c))
Second=$((a*b+c))
Third=$((c+a/b))
Fourth=$((a%b+c))

arithmetic[0]=$first
arithmetic[1]=$Second
arithmetic[2]=$Third
arithmetic[3]=$Fourth

for key in "${!arithmetic[@]}"; 
do
    logic[key]=${arithmetic[$key]}
done
for ((i=0; i<4; i++))
do
        for ((j=0; j<4-i-1; j++))
        do                                                             
                if [ ${logic[j]} -gt ${logic[$((j+1))]} ]
                then
                    temp=${logic[j]}
                    logic[$j]=${logic[$((j+1))]}  
                    logic[$((j+1))]=$temp
                fi
        done
done
echo "Array after sorting: "
for ((i=0; i<4; i++))
do
    echo ${logic[$i]}
done

for ((i=0; i<4; i++))
do
        for ((j=0; j<4-i-1; j++))
        do                                                             
                if [ ${logic[j]} -lt ${logic[$((j+1))]} ]
                then
                    
                    temp=${logic[j]}
                    logic[$j]=${logic[$((j+1))]}  
                    logic[$((j+1))]=$temp
                fi
        done
done
echo "Array after sorting: "
for ((i=0; i<4; i++))
do
    echo ${logic[$i]}
done





