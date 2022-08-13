read -p "enter value of a " a
read -p "enter value of b " b
read -p "enter value of c " c
max=0
p=`echo $((a+b*c))`
q=`echo $((c+a/b))`
r=`echo $((a%b+c))`
s=`echo $((a*b+c))`
if [[ $p -gt $max ]]
then
    max=$p
fi

if [[ $q -gt $max ]]
then
    max=$q
fi

if [[ $r -gt $max ]]
then
    max=$r
fi

if [[ $s -gt $max ]]
then
    max=$s
fi
echo "$max is the largest"


if [[ $p -lt $q && $p -lt $r && $p -lt $s ]]
then
    echo "p is the smallest"
elif [[ $q -lt $p && $q -lt $r && $q -lt $s ]]
then
echo "q is the smallest"
elif [[ $r -lt $q && $r -lt $s && $r -lt $p ]]
then
echo "r is the smallest"
elif [[ $s -lt $q && $s -lt $r && $s -lt $p ]]
then
echo "s is the smallest"  
fi

