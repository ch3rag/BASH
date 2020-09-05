# Function To Evaluate GCD Of Two Numbers Using Recursive Euclidean Algorithm

gcd() {
    if [ $1 -eq 0 ]; then echo $2
    else echo $(gcd $(($2 % $1)) $1); fi
}