echo "Select your favourite team"
echo "1.RCB 2.MI 3.CSK 4.RR 5.KKR"
read teamtype
read -p "enter how many matches won " won

function checkEligibility() {
   echo $2
   if (( $2>8 ))
   then
      echo "$1 is eligible"
   else
      echo "$1 is not eligible"
   fi
}

case $teamtype in 

1)
   teamName='RCB'
   checkEligibility $teamName $won
;;    
2)
   
    teamName='MI'
   checkEligibility $teamName $won  
;;    
3)
   
    teamName='CSK'
   checkEligibility $teamName $won  
;;    
4)
   
    teamName='RR'
   checkEligibility $teamName $won  
;;    
5)
   
   teamName='KKR'
   checkEligibility $teamName $won  
;;
*)
 echo "your team is not elgible" 
 ;;   
esac      
    