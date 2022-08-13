for Item in `ls`
do
File=`echo $Item | awk -F. '{ print $1 }'`
extension=`echo $Item | awk -F. '{ print $2 }'`
case $extension in 
py)
echo "$File Is a Python File"
;;
html)
echo "$File Is a Html File"
;;
mp4)
echo "$File Is a Mp4 File"
;;
js)
echo "$File Is a Java File"
;;
sh)
echo "$File Is a Shell-Script File"
;;
*)
echo "Something Went Wrong With The Files"
;;
esac
done