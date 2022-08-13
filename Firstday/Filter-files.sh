for X in `ls *.*`
do
    echo $X
    extension=`echo $X | awk -F. '{ print $2 }'` 
    echo $extension
    if [ -d $extension ]
    then 
        rm -rf $extension
    fi
    mkdir $extension
    mv $X $extension 
done
