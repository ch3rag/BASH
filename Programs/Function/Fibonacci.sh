# Function To Print Nth Term Of Fibonacci Sequence Using Recursion

fibonacci() {
    if [ $1 -eq 0 ]; then echo "0"
    elif [ $1 -eq 1 ]; then echo "1"
    else echo $(( $(fibonacci $(($1 - 1))) + $(fibonacci $(($1 - 2))) ))
    fi
}
