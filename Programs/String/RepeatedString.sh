# Command Line Program To Generate A Repeated String N Times With A Given Delimiter
str=$1
times=$2
delimiter=$3

if [ "$2" = "" ]; then times=0; fi

for ((i = 0; i < $times; i++))
do
    printf "%s%s" "$str" "$delimiter"
done

echo
