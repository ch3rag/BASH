########################################################################
#                     Author: Bharat Singh Rajput                      #
#                         File Name: Vowel.sh                          #
#                Creation Date: April 16, 2020 02:41 PM                #
#              Last Updated: September 10, 2020 01:28 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#   Program To Count Total Number Of Alphabets and Consonants In A     #
#                               String                                 #
########################################################################

read -p "Enter A String: " str
vowels=0
consonants=0

for (( i = 0; i < ${#str}; i++))
do
    alpha=${str:$i:1}
    if [[ $alpha =~ [aeiouAEIOU] ]] 
    then 
        vowels=$(($vowels + 1))
    elif [[ $alpha =~ [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] ]]
    then
        consonants=$(($consonants + 1))
    fi
done


echo "Vowels: $vowels"
echo "Consonants: $consonants"
