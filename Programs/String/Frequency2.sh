########################################################################
#                     Author: Bharat Singh Rajput                      #
#                       File Name: Frequency2.sh                       #
#                Creation Date: April 16, 2020 04:46 PM                #
#              Last Updated: September 10, 2020 01:25 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#     Program To Find The Frequency Of Each Alphabet In  A String      #
########################################################################

read -p "Enter A String: " str
str=${str^^}
alpha=($(printf "0%.0s " {1..26}))


for ((i = 0; i < ${#str}; i++))
do
    char=${str:$i:1}
    if [[ $char =~ [[:alpha:]] ]]
    then
        ascii=`printf "%d" "'$char"`
        ascii=$(($ascii - 65))
        alpha[$ascii]=$((${alpha[$ascii]} + 1))
    fi
done

for ((i = 0; i < 26; i++))
do
    if ((${alpha[$i]} > 0))
    then
        char=`printf \\\\$(printf "%o" $(($i + 65)))`
        printf "%s\t%d\n" $char ${alpha[$i]}
    fi
done
