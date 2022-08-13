read -p 'Enter the folder name ' folder
if [ -d $folder ] 
then 
       echo "folder exists Already"
else
        mkdir $folder
fi
