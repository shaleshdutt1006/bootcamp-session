employee=`cat data.csv | awk '$4 > 10000 {print $2 "" $7}'`
echo $employee

totalPay=`cat data.csv | grep CAPTAIN | awk '{ sum=sum+$7 }END { print sum }'`
 echo $totalPay

OverTimepay=`cat data.csv | awk '$5>7000 && $5 < 10000 {print $3 " " $5}'`
echo $OverTimepay


basePay=`cat data.csv | awk '{ sum=sum+$4 }END { print sum/NR }'`
echo $basePay
