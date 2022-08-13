for X in `ls *.1`
do
    extension=`echo $X | awk -F. '{ print $2 }'`
    folder=`echo $X | awk -F. '{ print $1 }'`
    date=$(date '+%d%m%Y')
    echo $folder-$date.$extension
    mv $X $folder-$date.$extension
done