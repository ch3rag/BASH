read -p "Enter A String: "  str
len=${#str}
strrev=""
for (( i = len - 1; i >= 0; i-- ))
do
	strrev=`echo $strrev${str:$i:1}`
done

echo $strrev
