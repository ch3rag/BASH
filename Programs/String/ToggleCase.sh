########################################################################
#                     Author: Bharat Singh Rajput                      #
#                       File Name: ToggleCase.sh                       #
#                Creation Date: April 16, 2020 03:20 PM                #
#              Last Updated: September 10, 2020 01:28 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#              Program To Toggle Case Of Every Character               #
########################################################################

read -p "Enter A String: " str
result=""
len=${#str}

for ((i = 0; i < len; i++))
do
    char=${str:i:1}
    ascii=`printf "%d" "'$char"`
    if [ $ascii -ge 97 -a $ascii -le 122 ]
    then
        ascii=$(($ascii - 32))
        result=$result`printf \\\\$(printf "%o" $ascii)`
        
    elif [ $ascii -ge 65 -a $ascii -le 90 ]
    then 
        ascii=$(($ascii + 32))
        result=$result`printf \\\\$(printf "%o" $ascii)`
    else
        result=$result`printf \\\\$(printf "%o" $ascii)`
    fi
done

echo "Toggle Case: $result"
