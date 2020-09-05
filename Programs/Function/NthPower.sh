# Function To Compute Nth Power Of A Number Using Recursion

power() {
    if [ $2 -eq 0 ]; then echo "1"
    else echo $(($1 * $(power $1 $(($2 - 1)))))
    fi
}