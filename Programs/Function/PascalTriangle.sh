########################################################################
#                     Author: Bharat Singh Rajput                      #
#                     File Name: PascalTriangle.sh                     #
#                Creation Date: April 17, 2020 05:17 PM                #
#              Last Updated: September 10, 2020 01:16 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#              Function To Print Pascal's Triangle N Rows              #
########################################################################

factorial() {
    if [ $1 -eq 0 ]
    then
        echo "1"
    else
        echo $(($1 * $(factorial $(($1 - 1)))))
    fi
}

permutation() {
    echo $(( $(factorial $1) / $(factorial $(($1 - $2))) ))
}

combination() {
    echo $(( $(permutation $1 $2) / $(factorial $2) ))
}

pascal() {
    for ((i = 0; i < $1; i++)) 
    do
        for ((j = 0; j < $(($1 - $i)); j++))
        do
            printf " "
        done
        for ((k = 0; k <= i; k++))
        do
            printf "%3d" $(combination $i $k)
        done
        echo
    done
}
