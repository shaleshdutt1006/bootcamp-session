jan=0
feb=0
march=0
april=0
may=0
june=0
july=0
aug=0
sept=0
oct=0
nov=0
dec=0
for ((i=0; i<50; i++))
do
          month=$((RANDOM % 12)) 
          if [ $month -eq 1 ]
          then
          jan=$((jan+1))
          elif [ $month -eq 2 ]
          then
          feb=$((feb+1))
          elif [ $month -eq 3 ]
          then
          march=$((march+1))
          elif [ $month -eq 4 ]
          then
          april=$((april+1))
          elif [ $month -eq 5 ]
          then
          may=$((may+1))
          elif [ $month -eq 6 ]
          then
          june=$((june+1))
          elif [ $month -eq 7 ]
          then
          july=$((july+1))
          elif [ $month -eq 8 ]
          then
          aug=$((aug+1))
          elif [ $month -eq 9 ]
          then
          sept=$((sept+1))
          elif [ $month -eq 10 ]
          then
          oct=$((oct+1))
          elif [ $month -eq 11 ]
          then
          nov=$((nov+1))
          elif [ $month -eq 12 ]
          then
          dec=$((dec+1))
fi
done


echo "birthday common in januray are $jan"
echo "birthday common in feb are $feb"
echo "birthday common in march are $march"
echo "birthday common in april are $april"
echo "birthday common in may are $may"
echo "birthday common in june are $june"
echo "birthday common in july are $july"
echo "birthday common in august are $aug"
echo "birthday common in september are $sept"
echo "birthday common in october are $oct"
echo "birthday common in november are $nov"
echo "birthday common in december are $dec"














































