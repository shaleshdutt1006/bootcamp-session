echo $env
user=`echo $env | grep 'usersecret'`

if [ -z $user ] 
then
    export usersecret="dH34xJaa23"
    echo $usersecret
else
     echo "Error"
fi
