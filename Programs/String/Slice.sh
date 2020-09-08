# Program To Slice A String

read -p "Enter A String: " str
read -p "Enter Starting Index: " i
read -p "Enter Final Index: " j

len=${#str}
slice=""

if (( $i < 0 || $i >= len || $j < 0 || $j >= len || $j < $i ))
then
    echo "Invalid Index"
else
    for ((k = i; k <= j; k++))    
    do
        slice=$slice${str:k:1}
    done
fi


echo "Slice: $slice"
