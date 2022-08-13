for file in `ls *.*`
do
    folder=`echo $file | awk -F. '{print $1}'`
    ext=`echo $file | awk -F. '{ print $2 }'`
    if [ -d ../backup/$folder ]
    then
        echo "Folder exist. Hence, removing it"
        rm -rf ../backup/$folder
    fi
    echo "Making new folder"
    mkdir -p ../backup/$folder/$ext
    mv $file ../backup/$folder/$ext
done 