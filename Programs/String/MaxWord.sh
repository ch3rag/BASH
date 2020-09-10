########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: MaxWord.sh                         #
#                Creation Date: April 16, 2020 03:41 PM                #
#              Last Updated: September 10, 2020 01:26 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#  Programs To Input A String And Find The Largest And Smallest Word   #
########################################################################

read -p "Enter A String: " str
str=$str" "
maxWord=""
maxLen=-1
minWord=""
minLen=-1
currentWord=""

for ((i = 0; i < ${#str}; i++))
do
    currentWord=$currentWord${str:$i:1}
    if [[ ${str:$i:2}  =~ [^[:space:]][[:space:]] ]]
    then  
        currentWordLen=${#currentWord} 
        if [ $currentWordLen -lt $minLen -o $minLen -eq -1 ]
        then
             minWord=$currentWord
             minLen=$currentWordLen
        fi

        if [ $currentWordLen -gt $maxLen -o $maxLen -eq -1 ] 
        then
            maxWord=$currentWord
            maxLen=$currentWordLen
        fi
        currentWord=""
    fi
done

echo "Largest Word: $maxWord"
echo "Smallest Word: $minWord"
