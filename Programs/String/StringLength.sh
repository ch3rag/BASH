# Program To Find Out Length Of A String

read -p "Enter A String: " str
len=0

while [ "${str:len:1}" != "" ]
do
    len=$(($len + 1))
done

echo "Length: $len"