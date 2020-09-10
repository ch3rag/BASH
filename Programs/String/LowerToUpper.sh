########################################################################
#                     Author: Bharat Singh Rajput                      #
#                      File Name: LowerToUpper.sh                      #
#                Creation Date: April 14, 2020 02:06 PM                #
#              Last Updated: September 10, 2020 01:25 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#       Program To Convert Uppercase String To Lower Case String       #
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
        
    else
        result=$result`printf \\\\$(printf "%o" $ascii)`
        # $(printf "%o" $ascii) Converts $ascii To Octal
        # printf \\ octal Converts An Octal Number To Character
    fi
done

echo "Upper Case: $result"
