read -p "Enter number for weekdays " weekday
if [ $weekday -eq 0 ]
then
echo "Sunday"
elif [ $weekday -eq 1 ]
then
echo "Monday"
elif [ $weekday -eq 2 ]
then
echo "Tuesday"
elif [ $weekday -eq 3 ]
then
echo "Wednesday"
elif [ $weekday -eq 4 ]
then
echo "Thrusday"
elif [ $weekday -eq 4 ]
then
echo "Friday"
elif [ $weekday -eq 5 ]
then
echo "Saturday"
else
echo "your input is invalid"
fi