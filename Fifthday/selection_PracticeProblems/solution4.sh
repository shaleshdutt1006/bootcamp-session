a=$((RANDOM % 2)) 
if [ $a -eq 1 ]
then 
echo "It is tail"
else
echo "It is head"
fi