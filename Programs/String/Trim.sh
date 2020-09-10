########################################################################
#                     Author: Bharat Singh Rajput                      #
#                          File Name: Trim.sh                          #
#                Creation Date: April 16, 2020 03:53 PM                #
#              Last Updated: September 10, 2020 01:28 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#            Program To Trim Extra Whitespaces In A String             #
########################################################################

read -p "Enter A String: " str
result=""

for ((i = 0; i < ${#str}; i++))
do  
    if [[ ${str:$i:2}  =~ [[:space:]][[:space:]] ]]
    then      
        continue
    else
        result=$result${str:$i:1}
    fi
done

echo "Result: $result"
