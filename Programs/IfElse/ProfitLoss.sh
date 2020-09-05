# Program To Calculate Profit Or Loss

read -p "Enter Cost Price: " cp
read -p "Enter Selling Price: " sp

delta=$(($sp - $cp))

if [ $delta -gt 0 ]
then 
    echo "Profit: Rs.$delta"
    ppercent=`echo "scale=3; $delta / $cp * 100" | bc`
    echo "Profit Percentage: $ppercent%"
elif [ $delta -lt 0 ]
then
    echo "Loss: Rs.$delta"
    lpercent=`echo "scale=3; $delta / $cp * 100" | bc`
    echo "Loss Percentage: $lpercent%"
else
    echo "Neither Profit Nor Loss"
fi
