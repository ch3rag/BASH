########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: Words.sh                          #
#                Creation Date: April 16, 2020 04:49 PM                #
#              Last Updated: September 10, 2020 01:28 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#      Program To Input A Sentence And Count The Number Of Words       #
########################################################################

read -p "Enter A Sentence: " str
len=${#str}
words=0

if [ "$str" != "" ]
then
    for ((i = 0; i < $len - 1; i++))
    do
        if [[ ${str:$i:2}  =~ [[:space:]][^[:space:]] ]]
        then      
            words=$(($words + 1))
        fi
    done
else
    words=-1
fi
echo "Words: $(($words + 1))"
