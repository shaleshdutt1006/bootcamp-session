echo "Please Select Your Favourite Team In IPL"

echo "1.RCB 2.MI 3.CSK"

read teamName



win=0

lose=0

nrr=""

points=0

MATCH_PLAYED=14





function pointsCalculator(){

         lose=$((MATCH_PLAYED-$2))

         points=$(($2*2))

         echo "Your Selecting $teamName"

         echo "Team Secured : $4"

         echo "Matches Played In IPL : $MATCH_PLAYED"

         echo "Won : $2 , Lost : $lose"

         echo "Run-Rate : $3"

         echo "Points : $points"

}



case $teamName in 

MI) 

    win=4

    nrr="-0.506"

    position=10

    pointsCalculator $teamName $win $nrr $position

;;

RCB) 

    win=8

    nrr="-0.253"

    position=4

    pointsCalculator $teamName $win $nrr $position

;; 

CSK) 

    win=4

    nrr="-0.203"

    position=9

    pointsCalculator $teamName $win $nrr $position

;; 

*) 

echo "Sorry Your Given Team Is Not Validated ! Try Again :("

;;

esac