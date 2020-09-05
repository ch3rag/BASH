# Function To Compute Factorial Of Number With Loop

factorial() {
    number=$1
    factorial=1

    for ((i = 1; i <= $number; i++))
    do
        factorial=$(($factorial * $i))
    done

    echo $factorial
}