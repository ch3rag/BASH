########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: String Compare.sh                     #
#                Creation Date: April 16, 2020 05:25 PM                #
#              Last Updated: September 10, 2020 01:14 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#       Program to check whether strings passed are equal or not       #
########################################################################

function_compare() {
    string1="$1"
    string2="$2"
    len1=${#string1}
    len2=${#string2}
    i=0
    flag=0
    isEqual=1
    while [ $flag -eq 0 ]
    do
        if [ $i -lt $len1 ]
        then
            char1=${string1:$i:1}
            ascii1=`printf "%d" "'$char1"`
        else
            ascii1=0
            flag=1
        fi
        if [ $i -lt $len2 ]
        then
            char2=${string2:$i:1}
            ascii2=`printf "%d" "'$char2"`
        else
            ascii2=0
            flag=1
        fi

        diff=$(($ascii2 - $ascii1))
        if (($diff != 0))
        then
            isEqual=0
            flag=1
            break
        fi
        i=$(($i + 1))
    done
    if (( $isEqual == 1 ))
    then
        echo "The strings passed equal"
    else
        echo "The strings are not equal"
    fi
}
