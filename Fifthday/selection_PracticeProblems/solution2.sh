read -p "Enter the day " day
read -p "Enter the month in digit " month
if [[ $month -eq 3 && $day -ge 20 && $day -lt 31 ]]
then
    echo "True"
elif [[ ($month -eq 4 && $day -lt 30) || ($month -eq 5 && $day -lt 31) ]]
then
    echo "True"

elif [[ $month -eq 6 && $day -le 20 ]]
then
    echo "True"

else
    echo "False"
fi  