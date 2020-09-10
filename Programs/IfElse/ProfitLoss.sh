########################################################################
#                     Author: Bharat Singh Rajput                      #
#                       File Name: ProfitLoss.sh                       #
#                Creation Date: April 13, 2020 12:04 PM                #
#              Last Updated: September 10, 2020 01:18 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                 Program To Calculate Profit Or Loss                  #
########################################################################

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
