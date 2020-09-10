########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: Compare.sh                         #
#                Creation Date: April 14, 2020 05:48 PM                #
#              Last Updated: September 10, 2020 01:25 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#                    Program To Compare Two Strings                    #
########################################################################

read -p "Enter First String: " str1
read -p "Enter Second String: " str2

len1=${#str1}
len2=${#str2}

i=0
flag=0

while [ $flag -eq 0 ]
do
    if [ $i -lt $len1 ]
    then
        char1=${str1:i:1}
        ascii1=`printf "%d" "'$char1"`
    else
        ascii1=0
        flag=1
    fi

    if [ $i -lt $len2 ]
    then
        char2=${str2:i:1}
        ascii2=`printf "%d" "'$char2"`
    else  
        ascii2=0
        flag=1
    fi

    diff=$(($ascii2 - $ascii1))

    if (( $diff != 0 || $flag == 1))
    then
        echo $diff
        flag=1
    fi
    i=$((i + 1))
done
