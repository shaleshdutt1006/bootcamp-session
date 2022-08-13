declare -A movies
movies[english]="spiderman"
movies[tamil]="vikram"
movies[hindi]="okjaanu"
movies[telugu]="pushpa"

echo "Dict Is ${movies[@]}"

movies[malayalam]="kurup"
movies[kannada]="kgf"

echo "After Adding , Dict Is ${movies[@]}"


movies[kannada]="kgf2"
movies[tamil]="master"

echo "After Update , Dict Is ${movies[@]}"


unset 'movies[english]'
unset 'movies[telugu]'

echo "After Delete , Dict Is ${movies[@]}"
echo "Index number of an Dict Is ${!movies[@]}"
echo "Length of an Dict Is ${#movies[@]}"