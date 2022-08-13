read -p "Enter the year " year
if [[ $year%4 -eq 0  && $year%400 -eq 0 && $year%100 -ne 0 ]]
then
echo "This is a leap year"
else
echo "This is not a leap year"
fi
