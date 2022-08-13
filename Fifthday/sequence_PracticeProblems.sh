echo "$((RANDOM % 10))"

echo "$((RANDOM % 6))"

a=`echo "$((RANDOM % 6))"`
b=`echo "$((RANDOM % 6))"`
echo "the result is "$((a+b))



for((i=1;i<=5;i++))
do
a=`echo "$(( RANDOM % 10 ))"`
    sum=$((sum+a))
done
    echo "the sum is" $sum


a=`echo "$(( RANDOM % 10 ))"`
for((i=1;i<5;i++))
do
    N=5
    sum=$((sum+a))
    average=$((sum/N))

done
    echo "the average is" $average

read -p "how many inches you want to convert to foot " input


inches=$((input/12))

echo $inches

read -p "how many plots area you want to calculate " Plots
 length=60
 breadth=40
 area=$((length*breadth*Plots))   
   echo $area