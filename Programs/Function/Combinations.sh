########################################################################
#                     Author: Bharat Singh Rajput                      #
#                      File Name: Combinations.sh                      #
#                Creation Date: April 17, 2020 04:04 PM                #
#              Last Updated: September 10, 2020 01:14 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#      Program To Compute Combinations: nCr = n!/ [r!  * (n - r)!]     #
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
