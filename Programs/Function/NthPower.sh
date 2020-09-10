########################################################################
#                     Author: Bharat Singh Rajput                      #
#                        File Name: NthPower.sh                        #
#                Creation Date: April 16, 2020 08:50 PM                #
#              Last Updated: September 10, 2020 01:15 PM               #
#                     Source Language: shellscript                     #
#            Repository: https://github.com/ch3rag/BASH.git            #
#                                                                      #
#                       --- Code Description ---                       #
#      Function To Compute Nth Power Of A Number Using Recursion       #
########################################################################

power() {
    if [ $2 -eq 0 ]; then echo "1"
    else echo $(($1 * $(power $1 $(($2 - 1)))))
    fi
}
