for X in `ls *.*`
do
Folder=`echo $X | awk -F. '{ print $1 }'`
Extension=`echo $X | awk -F. '{ print $2 }'`
if [ -d $Folder ]
then
    echo "Folder is Already Present"
    rm -rf $Folder
fi
    mkdir -p $Folder/$Extension
    mv $X $Folder/$Extension
done
