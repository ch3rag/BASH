
## Array/SelectionSort.sh
### Program To Perform Selection Sort


```bash

1	# Program To Perform Selection Sort
2	 
3	selectionSort() {
4	    ar=($*)
5	    for ((i = 0; i < $(($# - 1)); i++))
6	    do
7	        minIndex=$i
8	    done
9		
```


## Array/String Compare.sh
### Program to check whether strings passed are equal or not


```bash

1	# Program to check whether strings passed are equal or not
2	
3	function_compare() {
4	    string1="$1"
5	    string2="$2"
6	    len1=${#string1}
7	    len2=${#string2}
8	    i=0
9	    flag=0
10	    isEqual=1
11	    while [ $flag -eq 0 ]
12	    do
13	        if [ $i -lt $len1 ]
14	        then
15	            char1=${string1:$i:1}
16	            ascii1=`printf "%d" "'$char1"`
17	        else
18	            ascii1=0
19	            flag=1
20	        fi
21	        if [ $i -lt $len2 ]
22	        then
23	            char2=${string2:$i:1}
24	            ascii2=`printf "%d" "'$char2"`
25	        else
26	            ascii2=0
27	            flag=1
28	        fi
29	
30	        diff=$(($ascii2 - $ascii1))
31	        if (($diff != 0))
32	        then
33	            isEqual=0
34	            flag=1
35	            break
36	        fi
37	        i=$(($i + 1))
38	    done
39	    if (( $isEqual == 1 ))
40	    then
41	        echo "The strings passed equal"
42	    else
43	        echo "The strings are not equal"
44	    fi
45	}
```


## Function/Combinations.sh
### Program To Compute Combinations


```bash

1	# Program To Compute Combinations
2	# nCr = n!/ [r!  * (n - r)!]
3	
4	factorial() {
5	    if [ $1 -eq 0 ]
6	    then
7	        echo "1"
8	    else
9	        echo $(($1 * $(factorial $(($1 - 1)))))
10	    fi
11	}
12	
13	permutation() {
14	    echo $(( $(factorial $1) / $(factorial $(($1 - $2))) ))
15	}
16	
17	combination() {
18	    echo $(( $(permutation $1 $2) / $(factorial $2) ))
19	}
```


## Function/EuclideanGCD.sh
### Function To Evaluate GCD Of Two Numbers Using Recursive Euclidean Algorithm


```bash

1	# Function To Evaluate GCD Of Two Numbers Using Recursive Euclidean Algorithm
2	
3	gcd() {
4	    if [ $1 -eq 0 ]; then echo $2
5	    else echo $(gcd $(($2 % $1)) $1); fi
6	}
```


## Function/FactorialLoop.sh
### Function To Compute Factorial Of Number With Loop


```bash

1	# Function To Compute Factorial Of Number With Loop
2	
3	factorial() {
4	    number=$1
5	    factorial=1
6	
7	    for ((i = 1; i <= $number; i++))
8	    do
9	        factorial=$(($factorial * $i))
10	    done
11	
12	    echo $factorial
13	}
```


## Function/FactorialRecursion.sh
### Function To Compute Factorial Of A Number Using Recursion


```bash

1	# Function To Compute Factorial Of A Number Using Recursion
2	
3	factorial() {
4	    if [ $1 -eq 0 ]
5	    then
6	        echo "1"
7	    else
8	        echo $(($1 * $(factorial $(($1 - 1)))))
9	    fi
10	}
```


## Function/Fibonacci.sh
### Function To Print Nth Term Of Fibonacci Sequence Using Recursion


```bash

1	# Function To Print Nth Term Of Fibonacci Sequence Using Recursion
2	
3	fibonacci() {
4	    if [ $1 -eq 0 ]; then echo "0"
5	    elif [ $1 -eq 1 ]; then echo "1"
6	    else echo $(( $(fibonacci $(($1 - 1))) + $(fibonacci $(($1 - 2))) ))
7	    fi
8	}
```


## Function/NthPower.sh
### Function To Compute Nth Power Of A Number Using Recursion


```bash

1	# Function To Compute Nth Power Of A Number Using Recursion
2	
3	power() {
4	    if [ $2 -eq 0 ]; then echo "1"
5	    else echo $(($1 * $(power $1 $(($2 - 1)))))
6	    fi
7	}
```


## Function/PascalTriangle.sh
### Function To Print Pascal's Trianle N Rows


```bash

1	# Function To Print Pascal's Trianle N Rows
2	
3	factorial() {
4	    if [ $1 -eq 0 ]
5	    then
6	        echo "1"
7	    else
8	        echo $(($1 * $(factorial $(($1 - 1)))))
9	    fi
10	}
11	
12	permutation() {
13	    echo $(( $(factorial $1) / $(factorial $(($1 - $2))) ))
14	}
15	
16	combination() {
17	    echo $(( $(permutation $1 $2) / $(factorial $2) ))
18	}
19	
20	pascal() {
21	    for ((i = 0; i < $1; i++)) 
22	    do
23	        for ((j = 0; j < $(($1 - $i)); j++))
24	        do
25	            printf " "
26	        done
27	        for ((k = 0; k <= i; k++))
28	        do
29	            printf "%3d" $(combination $i $k)
30	        done
31	        echo
32	    done
33	}
```


## Function/Permutation.sh
### Program To Compute Permutaions 


```bash

1	# Program To Compute Permutaions 
2	# nPr = n!/(n - r)!
3	
4	factorial() {
5	    if [ $1 -eq 0 ]
6	    then
7	        echo "1"
8	    else
9	        echo $(($1 * $(factorial $(($1 - 1)))))
10	    fi
11	}
12	
13	permutation() {
14	    echo $(( $(factorial $1) / $(factorial $(($1 - $2))) ))
15	}
```


## Function/Upper.sh
### Conversion Of String From Lower Case To Upper Case Using Transliteration


```bash

1	# Conversion Of String From Lower Case To Upper Case Using Transliteration
2	upperCase() {
3	    echo "Upper Case: `echo $1 | tr [:lower:] [:upper:]:`"
4	}
```


## IfElse/EvenOdd.sh
### Program To Check Whether A Number Is Even Or Odd


```bash

1	# Program To Check Whether A Number Is Even Or Odd
2	
3	printf "Enter A Number: "
4	read number
5	if [ `expr $number % 2` -eq 0 ]
6	then
7		echo "Even Number"
8	else
9		echo "Odd Number"
10	fi
11	---
```


## IfElse/Grade.sh
### Program to input marks of five subjects Physics, Chemistry, Biology, Mathematics and Computer. 


```bash

1	# Program to input marks of five subjects Physics, Chemistry, Biology, Mathematics and Computer. 
2	# Calculate percentage and grade according to following:
3	# Percentage >= 90% : Grade A
4	# Percentage >= 80% : Grade B
5	# Percentage >= 70% : Grade C
6	# Percentage >= 60% : Grade D
7	# Percentage >= 40% : Grade E
8	# Percentage < 40% : Grade F
9	read -p "Enter Marks In Physics: " physics
10	read -p "Enter Marks In Chemistry: " chemistry
11	read -p "Enter Marks In Biology: " biology
12	read -p "Enter Marks In Math: " math
13	read -p "Enter Marks In Computer: " computer
14	
15	percentage=$(( ($physics + $chemistry + $biology + $math + $computer) / 5 ))
16	
17	echo "Percentage: $percentage%"
18	
19	if (( $percentage >= 90 )) 
20	then
21	    echo "Grade A"
22	elif (( $percentage >= 80 ))
23	then 
24	    echo "Grade B"
25	elif (( $percentage >= 70 ))
26	then 
27	    echo "Grade C"
28	elif (( $percentage >= 60 ))
29	then 
30	    echo "Grade D"
31	elif (( $percentage >= 40 ))
32	then 
33	    echo "Grade E"
34	else
35	    echo "Grade F"
36	fi
```


## IfElse/Greater3.sh
### Program To Find Greatest Of 3 Numbers


```bash

1	# Program To Find Greatest Of 3 Numbers
2	
3	printf "Enter A : "
4	read A
5	printf "Enter B : "
6	read B
7	printf "Enter C : "
8	read C
9	
10	if [ $A -gt $B ]
11	then
12		if [ $A -gt $C ]
13		then
14			echo "A Is Greatest"
15		else
16			echo "C Is Greatest"
17		fi
18	elif [ $B -gt $C ]
19	then 
20		echo "B Is Greatest"
21	else
22		echo "C Is Greatest"
23	fi
```


## IfElse/LeapYear.sh
### Program To Check Whether A Year Is A Leap Year


```bash

1	# Program To Check Whether A Year Is A Leap Year
2	
3	printf "Enter Year: "
4	read year
5	if [ `expr $year % 4` -eq 0 ]
6	then
7		echo "Leap Year"
8	else
9		echo "Not A Leap  Year"
10	fi
```


## IfElse/LUcase.sh
### Program To Check Whether The Alphabet Is Lowercase Or Uppercase Using Regex


```bash

1	# Program To Check Whether The Alphabet Is Lowercase Or Uppercase Using Regex
2	read -p "Enter An Alphabet: " -n1 alpha
3	echo
4	
5	if [[ $alpha =~ [[:upper:]] ]] 
6	then 
7		echo "Uppercase Alphabet"
8	elif [[ $alpha =~ [[:lower:]] ]]
9	then
10		echo "Lowercase Alphabet"
11	else
12		echo "Not An Alphabet"
13	fi
```


## IfElse/PositiveNegative.sh
### Program To Check Whether A Number A Number Is Positive, Negative Or Zero


```bash

1	# Program To Check Whether A Number A Number Is Positive, Negative Or Zero
2	
3	printf "Enter A Number: "
4	read number
5	
6	if [ $number -gt 0 ]
7	then
8		echo "Positive Number"
9	elif [ $number -lt 0 ]
10	then
11		echo "Negative Number"
12	else
13		echo "Zero"
14	fi
```


## IfElse/ProfitLoss.sh
### Program To Calculate Profit Or Loss


```bash

1	# Program To Calculate Profit Or Loss
2	
3	read -p "Enter Cost Price: " cp
4	read -p "Enter Selling Price: " sp
5	
6	delta=$(($sp - $cp))
7	
8	if [ $delta -gt 0 ]
9	then 
10	    echo "Profit: Rs.$delta"
11	    ppercent=`echo "scale=3; $delta / $cp * 100" | bc`
12	    echo "Profit Percentage: $ppercent%"
13	elif [ $delta -lt 0 ]
14	then
15	    echo "Loss: Rs.$delta"
16	    lpercent=`echo "scale=3; $delta / $cp * 100" | bc`
17	    echo "Loss Percentage: $lpercent%"
18	else
19	    echo "Neither Profit Nor Loss"
20	fi
```


## IfElse/Quadrant.sh
### Program To Accept A Coordinate Point (X, Y) And Determine Which Quadrant The Point Lies


```bash

1	# Program To Accept A Coordinate Point (X, Y) And Determine Which Quadrant The Point Lies
2	
3	read -p "Enter X Co-ordinate: " x
4	read -p "Enter Y Co-ordinate: " y
5	
6	if (( x > 0 && y > 0 ))
7	then
8		echo "First Quadrant"
9	elif (( x < 0 && y > 0 ))
10	then
11		echo "Second Quadrant"
12	elif (( x < 0 && y < 0 ))
13	then
14		echo "Third Quadrant"
15	elif (( x > 0 && y < 0 ))
16	then
17		echo "Fourth Quadrant"
18	else
19		echo "Point Lies On Axes"
20	fi
```


## IfElse/Roots.sh
### Program To Calculate The Nature Of Roots Of A Quadratic Equation


```bash

1	# Program To Calculate The Nature Of Roots Of A Quadratic Equation
2	
3	read -p "Enter The Value Of a: " a
4	read -p "Enter The Value Of b: " b
5	read -p "Enter The Value Of c: " c
6	
7	discriminant=$(($b * $b - $((4 * $a * $c))))
8	
9	printf "Discriminant: %d\n" $discriminant
10	
11	if [ $discriminant -eq 0 ]
12	then 
13		echo "Roots Are Real And Equal"
14	elif [ $discriminant -gt 0 ]
15	then
16		echo "Roots Are Real And Distinct"
17	else 
18		echo "Roots Are Imaginary"
19	fi
```


## IfElse/Triangle.sh
### Program To Determine Type Of Triangle


```bash

1	# Program To Determine Type Of Triangle
2	
3	printf "Enter side A : "
4	read A
5	printf "Enter side B : "
6	read B
7	printf "Enter side C : "
8	read C
9	
10	if [ $A -le 0 -o $B -le 0 -o $C -le 0 ]
11	then
12		echo "Invalid Triangle"
13	elif [ $(($A + $B)) -le $C -o $(($B + $C)) -le $A -o $(($A + $C)) -le $B ]
14	then
15		echo "Invalid Triangle"
16	elif [ $A -eq $B -a $B -eq $C ]
17	then
18		echo "Equilateral Triangle"
19	elif [ $A -eq $B -o $B -eq $C -o $C -eq $A ]
20	then
21		echo "Isoceles Triangle"
22	else 
23		echo "Scalene Triangle"
24	fi
```


## IfElse/Vowel.sh
### Program To Check Whether The Alphabet Is Vowel Or Consonant


```bash

1	# Program To Check Whether The Alphabet Is Vowel Or Consonant
2	
3	read -p "Enter An Alphabet: " -n1 alpha
4	echo
5	
6	if [[ $alpha =~ [aeiouAEIOU] ]] 
7	then 
8		echo "Vowel"
9	elif [[ $alpha =~ [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] ]]
10	then
11		echo "Consonant"
12	else
13		echo "Not An Alphabet"
14	fi	
```


## Loop/APseries.sh
### Program To Print An Arithmetic Progression Upto N Terms


```bash

1	# Program To Print An Arithmetic Progression Upto N Terms
2	
3	read -p "Enter The Value Of First Term (a): " a
4	read -p "Enter The Value Of Common Difference (d): " d
5	read -p "Enter N: " n
6	
7	for ((i = 1; i <= n; i++))
8	do
9	    an=$(($a + ($i - 1) * $d))
10	    printf "%d " $an
11	done
12	echo
```


## Loop/Armstrong.sh
### Program To Check Whether A Number Is Armstrong Or Not


```bash

1	# Program To Check Whether A Number Is Armstrong Or Not
2	
3	read -p "Enter A Number: " number
4	temp=$number
5	sum=0
6	
7	while [ $number -gt 0 ]
8	do
9		digit=$(($number % 10))
10		number=$(($number / 10))
11		sum=$(($sum + $digit * $digit * $digit))
12	done
13	
14	if [ $sum -eq $temp ]
15	then 
16		echo "Armstrong Number"
17	else
18		echo "Not An Armstrong Number"
19	fi
```


## Loop/Average.sh
### Program To Input N Numbers And Calculate Their Average


```bash

1	# Program To Input N Numbers And Calculate Their Average
2	
3	flag=1
4	length=0
5	sum=0
6	
7	while [ $flag -eq 1 ]
8	do
9	    read -p "Enter A Number: " input
10	    sum=$(($sum + $input))
11	    length=$(($length + 1))
12	    read -n1 -p "Press 1 To Enter More Or Any Other Key To Exit: " flag
13	    echo
14	done
15	
16	average=`echo "scale=4; $sum / $length" | bc`
17	echo "Average: $average"
```


## Loop/BinaryToDecimal.sh
### Program To Convert Binary To Decimal


```bash

1	# Program To Convert Binary To Decimal
2	
3	read -p "Enter A Binary Number: " binary
4	
5	len=${#binary}
6	j=1
7	result=0
8	
9	for ((i = len - 1; i >= 0; i--))
10	do
11	    digit=${binary:i:1}
12	    result=$(($result + $j * $digit))
13	    j=$(($j * 2))
14	done
15	
16	echo "Decimal: $result"
```


## Loop/BinaryToHex.sh
### Program To Convert Binary To Hexadecimal


```bash

1	# Program To Convert Binary To Hexadecimal
2	
3	read -p "Enter A Binary Number: " binary
4	len=${#binary}
5	j=1
6	temp=0
7	result=""
8	
9	for ((i = len - 1; i >= 0; i--))
10	do
11	    digit=${binary:i:1}
12	    temp=$(($temp + $digit * $j))
13	    j=$(($j * 2))
14	    if (($j == 16 || i == 0))
15	    then
16	        if (($temp < 10)); then result="$temp$result";
17	        elif (($temp == 10)); then result="A$result"
18	        elif (($temp == 11)); then result="B$result"
19	        elif (($temp == 12)); then result="C$result"
20	        elif (($temp == 13)); then result="D$result"
21	        elif (($temp == 14)); then result="E$result"
22	        elif (($temp == 15)); then result="F$result"; fi
23	        j=1
24	        temp=0
25	    fi
26	done
27	
28	echo "Hexadecimal: $result"
```


## Loop/BinaryToOctal.sh
### Program To Convert Binary To Hexadecimal


```bash

1	# Program To Convert Binary To Hexadecimal
2	
3	read -p "Enter A Binary Number: " binary
4	len=${#binary}
5	j=1
6	temp=0
7	result=""
8	
9	for ((i = len - 1; i >= 0; i--))
10	do
11	    digit=${binary:i:1}
12	    temp=$(($temp + $digit * $j))
13	    j=$(($j * 2))
14	    if (($j == 8 || i == 0))
15	    then
16	        result="$temp$result";
17	        j=1
18	        temp=0
19	    fi
20	done
21	
22	echo "Octal: $result"
```


## Loop/Circle.sh
### Program To Input Radius Of A Circle And Print It's Circumference And Area


```bash

1	# Program To Input Radius Of A Circle And Print It's Circumference And Area
2	
3	read -p "Enter Radius: " radius
4	
5	circumference=`echo "scale=5; 2 * 3.14159 * $radius" | bc`
6	area=`echo "scale=5; 3.14159 * $radius * $radius" | bc`
7	
8	printf "Circumference: %f\nArea: %f\n" $circumference $area
```


## Loop/DecimalToBinary.sh
### Program To Convert A Decimal Number Into Binary


```bash

1	# Program To Convert A Decimal Number Into Binary
2	
3	read -p "Enter A Number: " number
4	binary=""
5	
6	while [ $number -gt 0 ]
7	do	
8		digit=$(($number % 2))	
9		number=$(($number / 2))
10		binary="$digit$binary"
11	done
12	
13	printf "Binary Equivalent: %s\n" $binary
```


## Loop/DecimalToHex.sh
### Program To Convert A Decimal Number Into Hexadecimal


```bash

1	# Program To Convert A Decimal Number Into Hexadecimal
2	
3	read -p "Enter A Number: " number
4	hex=""
5	
6	while [ $number -gt 0 ]
7	do	
8		digit=$(($number % 16))	
9		number=$(($number / 16))
10	    if (($digit < 10)); then hex="$digit$hex"
11	    elif (($digit == 10)); then hex="A$hex"
12	    elif (($digit == 11)); then hex="B$hex"
13	    elif (($digit == 12)); then hex="C$hex"
14	    elif (($digit == 13)); then hex="D$hex"
15	    elif (($digit == 14)); then hex="E$hex"
16	    elif (($digit == 15)); then hex="F$hex"; fi
17	done
18	
19	printf "Hexadecimal Equivalent: %s\n" $hex
```


## Loop/DecimalToOctal.sh
### Program To Convert A Decimal Number Into Octal


```bash

1	# Program To Convert A Decimal Number Into Octal
2	
3	read -p "Enter A Number: " number
4	oct=""
5	
6	while [ $number -gt 0 ]
7	do	
8		digit=$(($number % 8))	
9		number=$(($number / 8))
10	    if (($digit < 10)); then oct="$digit$oct"
11	    elif (($digit == 10)); then oct="A$oct"
12	    elif (($digit == 11)); then oct="B$oct"
13	    elif (($digit == 12)); then oct="C$oct"
14	    elif (($digit == 13)); then oct="D$oct"
15	    elif (($digit == 14)); then oct="E$oct"
16	    elif (($digit == 15)); then oct="F$oct"; fi
17	done
18	
19	printf "Octal Equivalent: %s\n" $oct
```


## Loop/EuclideanGCD.sh
### Program To Calculate GCD Using Euclidean Algorithm


```bash

1	# Program To Calculate GCD Using Euclidean Algorithm
2	
3	read -p "Enter First Number: " a 
4	read -p "Enter Second Number: " b
5	
6	while ((a != 0))
7	do
8	    temp=$a
9	    a=$(($b % $a))
10	    b=$temp
11	done
12	
13	echo "GCD: $b"
```


## Loop/FactorialSeries.sh
### Program To Print The Sum Of Following Series Upto N Terms:


```bash

1	# Program To Print The Sum Of Following Series Upto N Terms:
2	# 1! + 2! + 3! + 4! + ....
3	
4	read -p "Enter N: " n
5	sum=0
6	
7	for ((i = 1; i <= $n; i++))
8	do
9	    factorial=1
10	    for ((j = 1; j <= $i; j++))
11	    do
12	        factorial=$(($factorial * $j))
13	    done
14	    sum=$(($sum + $factorial))
15	done
16	
17	echo "Sum: $sum"
```


## Loop/Factorial.sh
### Program To Find Factorial Of A Number


```bash

1	# Program To Find Factorial Of A Number
2	
3	read -p "Enter A Number: " number
4	factorial=1
5	
6	for ((i = 1; i <= $number; i++))
7	do
8		factorial=$(($factorial * $i))
9	done
10	
11	printf "Factorial: "
12	echo $factorial
```


## Loop/Factors.sh
### Prorgam To Find Factors Of A Nuumber


```bash

1	# Prorgam To Find Factors Of A Nuumber
2	
3	read -p "Enter A Number: " number
4	
5	printf "Factors: "
6	for ((i = 1; i <= $(($number / 2 + 1)); i++))
7	do
8	    if (($number % $i == 0))
9	    then
10	        printf "%d " $i
11	    fi
12	done
13	echo $number
```


## Loop/Fibonacci.sh
### Program To Print Fibonacci Series Upto N


```bash

1	# Program To Print Fibonacci Series Upto N
2	
3	read -p "Enter N: " n
4	a=0
5	b=1
6	if [ $n -eq 1 ]; then echo "0";
7	elif [ $n -eq 2 ]; then echo "0 1";
8	elif [ $n -ge 3 ]; then
9		printf "0 1 "
10		while [ $n -ge 3 ]
11		do
12			c=$(($a + $b))
13			a=$b
14			b=$c
15			printf "%d " $c
16			n=$(($n - 1))
17		done
18		echo
19	fi 
```


## Loop/FloydTriangle.sh
### Program To Print Floyd Triangle Upto N Rows


```bash

1	# Program To Print Floyd Triangle Upto N Rows
2	
3	read -p "Enter The Number Of Rows: " rows
4	for ((i = 0; i < $rows; i++))
5	do
6	    c=$((($i % 2) + 1))
7	    for ((j = 0; j <= $i; j++))
8	    do
9	        printf "%d" $(($c % 2))
10	        c=$(($c + 1))
11	    done
12	    echo
13	done
```


## Loop/GPseries.sh
### Program To Print An Geometric Progression Upto N Terms


```bash

1	# Program To Print An Geometric Progression Upto N Terms
2	
3	read -p "Enter The Value Of First Term (a): " a
4	read -p "Enter The Value Of Common Ratio (r): " r
5	read -p "Enter N: " n
6	
7	for ((i = 1; i <= n; i++))
8	do
9	    rn=1
10	    for ((j = 1; j < $i; j++))
11	    do
12	        rn=$(($rn * $r))
13	    done
14	    tn=$(($a * $rn))
15	    printf "%d " $tn
16	done
17	echo
```


## Loop/LCM.sh
### Program To Calculate LCM Of Two Number


```bash

1	# Program To Calculate LCM Of Two Number
2	
3	read -p "Enter First Number: " a 
4	read -p "Enter Second Number: " b
5	x=$a
6	y=$b
7	
8	while ((a != 0))
9	do
10	    temp=$a
11	    a=$(($b % $a))
12	    b=$temp
13	done
14	
15	echo "LCM: $((($x * $y) / $b))"
```


## Loop/NthPower.sh
### Program To Calculate Nth Power Of A Number


```bash

1	# Program To Calculate Nth Power Of A Number
2	
3	read -p "Enter A Number: " number
4	read -p "Enter N: " n
5	
6	result=1
7	
8	for ((i = 0; i < $n; i++))
9	do
10	    result=$(($result * $number))
11	done
12	
13	echo "Result: $result"
```


## Loop/PalindromeNumber.sh
### Program To Check  Whether A Number Palindrome Or Not


```bash

1	# Program To Check  Whether A Number Palindrome Or Not
2	
3	read -p "Enter A Number: " number
4	temp=$number
5	reverse=0
6	
7	while [ $number -gt 0 ]
8	do
9		digit=$(($number % 10))
10		number=$(($number / 10))
11		reverse=$(($reverse * 10 + digit))
12	done
13	
14	if [ $reverse -eq $temp ]
15	then 
16		echo "Palindrome Number"
17	else
18		echo "Not An Palindrome Number"
19	fi
```


## Loop/Pattern1.sh
### Program To Print Following Pattern Specified Number Of Rows


```bash

1	# Program To Print Following Pattern Specified Number Of Rows
2	# *
3	# **
4	# ***
5	# ****
6	# *****
7	# ******
8	# ...n
9	
10	read -p "Enter The Number Of Rows: " rows
11	i=0
12	while [ $i -lt $rows ]
13	do
14		cols=0
15		while [ $cols -le $i ]
16		do
17			printf "*"
18			cols=$(($cols + 1))
19		done
20		echo
21		i=$(($i + 1))
22	done
```


## Loop/Pattern2.sh
### Program To Print Following Pattern Specified Number Of Rows


```bash

1	# Program To Print Following Pattern Specified Number Of Rows
2	# *******
3	# ******
4	# *****
5	# ****
6	# ***
7	# **
8	# *
9	# ...n
10	
11	read -p "Enter The Number Of Rows: " rows
12	while [ $rows -gt 0 ]
13	do
14		cols=0
15		while [ $cols -lt $rows ]
16		do
17			printf "*"
18			cols=$(($cols + 1))
19		done
20		echo
21		rows=$(($rows - 1))
22	done
```


## Loop/Pattern3.sh
### Program To Print Following Pattern Specified Number Of Rows


```bash

1	# Program To Print Following Pattern Specified Number Of Rows
2	#    *
3	#   ***
4	#  *****
5	# *******
6	# ...n
7	
8	read -p "Enter The Number Of Rows: " rows
9	i=1
10	while [ $rows -gt 0 ]
11	do
12		spaces=$(($rows - 1))
13		while [ $spaces -gt 0 ]
14		do
15			printf " "
16			spaces=$(($spaces - 1))
17		done
18		cols=$i
19		while [ $cols -gt 0 ]
20		do
21			printf "*"
22			cols=$(($cols - 1))
23		done
24		echo
25		i=$(($i + 2))
26		rows=$(($rows - 1))
27	done
```


## Loop/Perfect.sh
### Program To Check Whether A Number Is Perfect Or Not


```bash

1	# Program To Check Whether A Number Is Perfect Or Not
2	# 6 = 3 X 2 X 1, 6 = 3 + 2 + 1
3	
4	read -p "Enter A Number: " number
5	sum=0
6	
7	for ((i = 1; i <= $(($number / 2 + 1)); i++))
8	do
9	    if (($number % $i == 0))
10	    then
11	        sum=$(($sum + i))
12	    fi
13	done
14	if (($sum == $number))
15	then 
16	    echo "Perfect Number"
17	else
18	    echo "Not A Perfect Number"
19	fi
```


## Loop/Prime.sh
### Procgram To Check Whether A Number Is Prime Or Not


```bash

1	# Procgram To Check Whether A Number Is Prime Or Not
2	
3	read -p "Enter A Number: " number
4	flag=0
5	for ((i=2; i < $(($number / 2 + 1)); i++))
6	do
7		if [ $(($number % $i)) -eq 0 ]
8		then
9			flag=1
10		fi
11	done
12	
13	if [ $flag -eq 0 ] 
14	then 
15		echo "Prime Number"
16	else
17		echo "Not A Prime Number"
18	fi	
```


## Loop/ReverseNumber.sh
### Program To Reverse A Number


```bash

1	# Program To Reverse A Number
2	
3	read -p "Enter A Number: " number
4	temp=$number
5	reverse=0
6	
7	while [ $number -gt 0 ]
8	do
9		digit=$(($number % 10))
10		number=$(($number / 10))
11		reverse=$(($reverse * 10 + digit))
12	done
13	
14	printf "Reverse: %d\n" $reverse
```


## Loop/StrongNumber.sh
### Program To Check Whether A Number Is Strong Number Or Not


```bash

1	# Program To Check Whether A Number Is Strong Number Or Not
2	# 1! + 4! + 5! = 145
3	
4	read -p "Enter A Number: " number
5	backup=$number
6	sum=0
7	while (($number >  0))
8	do
9	    digit=$(($number % 10))
10	    number=$(($number / 10))
11	    fact=1
12	    for ((i = 1; i <= digit; i++))
13	    do
14	        fact=$(($fact * $i))        
15	    done
16	    sum=$(($sum + $fact))
17	done
18	
19	if (( $backup == $sum ))
20	then 
21	    echo "Strong Number"
22	else
23	    echo "Not A Strong Number"
24	fi
```


## Loop/SumOfDigits.sh
### Program To Sum Of Digits Of A Number


```bash

1	# Program To Sum Of Digits Of A Number
2	
3	read -p "Enter A Number: " number
4	sum=0
5	
6	while [ $number -gt 0 ]
7	do
8		digit=$(($number % 10))
9		sum=$(($sum + $digit))
10		number=$(($number / 10))
11	done
12	
13	printf "Sum Of Digits: %d\n" $sum
```


## Loop/Table.sh
### Program To Print Table Of A Number


```bash

1	# Program To Print Table Of A Number
2	
3	read -p "Enter A Number: " number
4	for i in {1..10}
5	do
6		printf "%d X %d = %d\n" $number $i $(($number * $i))
7	done
```


## String/Capitalize.sh
### Program To Capitalize Each Word Of The String


```bash

1	# Program To Capitalize Each Word Of The String
2	
3	read -p "Enter A String: " str
4	len=${#str}
5	result=""
6	char=""
7	
8	for ((i = 0; i < $len; i++))
9	do
10	    prevChar=$char
11	    char=${str:$i:1}
12	    ascii=`printf "%d" "'$char"`
13	    if [ "$prevChar" = "" -o $ascii -ge 97 -a $ascii -le 122 -a "$prevChar" = " " ]
14	    then
15	        ascii=$(($ascii - 32))
16	        result=$result`printf \\\\$(printf "%o" $ascii)`        
17	    else
18	        result=$result`printf \\\\$(printf "%o" $ascii)`
19	    fi
20	done
21	
22	echo "Capitalized: $result"
```


## String/Compare.sh
### Program To Compare Two Strings


```bash

1	# Program To Compare Two Strings
2	
3	read -p "Enter First String: " str1
4	read -p "Enter Second String: " str2
5	
6	len1=${#str1}
7	len2=${#str2}
8	
9	i=0
10	flag=0
11	
12	while [ $flag -eq 0 ]
13	do
14	    if [ $i -lt $len1 ]
15	    then
16	        char1=${str1:i:1}
17	        ascii1=`printf "%d" "'$char1"`
18	    else
19	        ascii1=0
20	        flag=1
21	    fi
22	
23	    if [ $i -lt $len2 ]
24	    then
25	        char2=${str2:i:1}
26	        ascii2=`printf "%d" "'$char2"`
27	    else  
28	        ascii2=0
29	        flag=1
30	    fi
31	
32	    diff=$(($ascii2 - $ascii1))
33	
34	    if (( $diff != 0 || $flag == 1))
35	    then
36	        echo $diff
37	        flag=1
38	    fi
39	    i=$((i + 1))
40	done
```


## String/Count.sh
### Program To Count Number Of Alphabets, Numbers, Whitespace & Special Character In A String


```bash

1	# Program To Count Number Of Alphabets, Numbers, Whitespace & Special Character In A String
2	
3	read -p "Enter A String: " str
4	len=${#str}
5	alpha=0
6	num=0
7	special=0
8	whitespace=0
9	
10	for ((i = 0; i < $len; i++))
11	do
12	    char=${str:$i:1}
13	    if [[ $char =~ [[:alpha:]] ]]
14	        then alpha=$(($alpha  + 1))
15	    elif [[ $char =~ [[:digit:]] ]]
16	        then num=$(($num + 1))
17	    elif [[ $char =~ [[:space:]] ]]
18	        then whitespace=$(($whitespace + 1))
19	    else
20	        special=$(($special + 1))
21	    fi
22	done
23	
24	echo "Alphabets: $alpha"
25	echo "Numbers: $num"
26	echo "Whitespaces: $whitespace"
27	echo "Special Characters: $special"
```


## String/Frequency2.sh
### Program To Find The Frequency Of Each Alphabet In  A String


```bash

1	# Program To Find The Frequency Of Each Alphabet In  A String
2	
3	read -p "Enter A String: " str
4	str=${str^^}
5	alpha=($(printf "0%.0s " {1..26}))
6	
7	
8	for ((i = 0; i < ${#str}; i++))
9	do
10	    char=${str:$i:1}
11	    if [[ $char =~ [[:alpha:]] ]]
12	    then
13	        ascii=`printf "%d" "'$char"`
14	        ascii=$(($ascii - 65))
15	        alpha[$ascii]=$((${alpha[$ascii]} + 1))
16	    fi
17	done
18	
19	for ((i = 0; i < 26; i++))
20	do
21	    if ((${alpha[$i]} > 0))
22	    then
23	        char=`printf \\\\$(printf "%o" $(($i + 65)))`
24	        printf "%s\t%d\n" $char ${alpha[$i]}
25	    fi
26	done
```


## String/Frequency.sh
### Program To Find Frequency Of A String Or A Character In A Given String


```bash

1	# Program To Find Frequency Of A String Or A Character In A Given String
2	
3	read -p "Enter A String: " str
4	read -p "Enter String To Be Searched: " search
5	searchLen=${#search}
6	max=$((${#str} - $searchLen))
7	count=0
8	
9	for ((i = 0; i < max; i++))
10	do
11	    if [ "${str:$i:$searchLen}" = "$search" ]
12	    then
13	        count=$(($count + 1))
14	    fi
15	done
16	
17	echo "Frequency Of Searched String Is: $count"
```


## String/LowerToUpper2.sh
### Program To Convert Uppercase String To Lower Case String


```bash

1	# Program To Convert Uppercase String To Lower Case String
2	
3	read -p "Enter A String: " str
4	echo "Upper Case: ${str^^}"
```


## String/LowerToUpper.sh
### Program To Convert Uppercase String To Lower Case String


```bash

1	# Program To Convert Uppercase String To Lower Case String
2	
3	read -p "Enter A String: " str
4	result=""
5	len=${#str}
6	
7	for ((i = 0; i < len; i++))
8	do
9	    char=${str:i:1}
10	    ascii=`printf "%d" "'$char"`
11	    if [ $ascii -ge 97 -a $ascii -le 122 ]
12	    then
13	        ascii=$(($ascii - 32))
14	        result=$result`printf \\\\$(printf "%o" $ascii)`
15	        
16	    else
17	        result=$result`printf \\\\$(printf "%o" $ascii)`
18	        # $(printf "%o" $ascii) Converts $ascii To Octal
19	        # printf \\octal Converts An Octal Number To Character
20	    fi
21	done
22	
23	echo "Upper Case: $result"
```


## String/MaxWord.sh
### Programs To Input A String And Find The Largest And Smallest Word


```bash

1	# Programs To Input A String And Find The Largest And Smallest Word
2	
3	read -p "Enter A String: " str
4	str=$str" "
5	maxWord=""
6	maxLen=-1
7	minWord=""
8	minLen=-1
9	currentWord=""
10	
11	for ((i = 0; i < ${#str}; i++))
12	do
13	    currentWord=$currentWord${str:$i:1}
14	    if [[ ${str:$i:2}  =~ [^[:space:]][[:space:]] ]]
15	    then  
16	        currentWordLen=${#currentWord} 
17	        if [ $currentWordLen -lt $minLen -o $minLen -eq -1 ]
18	        then
19	             minWord=$currentWord
20	             minLen=$currentWordLen
21	        fi
22	
23	        if [ $currentWordLen -gt $maxLen -o $maxLen -eq -1 ] 
24	        then
25	            maxWord=$currentWord
26	            maxLen=$currentWordLen
27	        fi
28	        currentWord=""
29	    fi
30	done
31	
32	echo "Largest Word: $maxWord"
33	echo "Smallest Word: $minWord"
```


## String/PalindromeString.sh
### Program To Check Whether The String Is Palindrome


```bash

1	# Program To Check Whether The String Is Palindrome
2	
3	read -p "Enter A String: " string
4	
5	len=${#string}
6	reverse=""
7	
8	for ((i = $len - 1; i >= 0; i--))
9	do
10		reverse="$reverse${string:$i:1}"
11	done
12	
13	if [ "$string" = "$reverse" ]
14	then 
15		echo "String Is Palindrome"
16	else
17		echo "String Is Not Palindrome"
18	fi
```


## String/RepeatedString.sh
### Command Line Program To Generate A Repeated String N Times With A Given Delimiter


```bash

1	# Command Line Program To Generate A Repeated String N Times With A Given Delimiter
2	str=$1
3	times=$2
4	delimiter=$3
5	
6	if [ "$2" = "" ]; then times=0; fi
7	
8	for ((i = 0; i < $times; i++))
9	do
10	    printf "%s%s" "$str" "$delimiter"
11	done
12	
13	echo
```


## String/Replace.sh
### Program To Replace All Occurances Of A String Or Character By


```bash

1	# Program To Replace All Occurances Of A String Or Character By
2	# Another String Or Character In A Given String
3	
4	read -p "Enter A String: " str
5	read -p "Enter String To Be Searched: " search
6	read -p "Enter String To Be Replaced With: " replace
7	
8	searchLen=${#search}
9	max=${#str}
10	result=""
11	for ((i = 0; i < max; i++))
12	do
13	    slice=${str:$i:$searchLen}
14	    if [ "$slice" = "$search" ]
15	    then
16	        result=$result$replace
17	        i=$(($i + $searchLen - 1))
18	    else
19	        result=$result${str:$i:1}
20	    fi
21	done
22	
23	echo "Result: $result"
```


## String/Slice.sh
### Program To Slice A String


```bash

1	# Program To Slice A String
2	
3	read -p "Enter A String: " str
4	read -p "Enter Starting Index: " i
5	read -p "Enter Final Index: " j
6	
7	len=${#str}
8	slice=""
9	
10	if (( $i < 0 || $i >= len || $j < 0 || $j >= len || $j < $i ))
11	then
12	    echo "Invalid Index"
13	else
14	    for ((k = i; k <= j; k++))    
15	    do
16	        slice=$slice${str:k:1}
17	    done
18	fi
19	
20	
21	echo "Slice: $slice"
```


## String/StringLength.sh
### Program To Find Out Length Of A String


```bash

1	# Program To Find Out Length Of A String
2	
3	read -p "Enter A String: " str
4	len=0
5	
6	while [ "${str:len:1}" != "" ]
7	do
8	    len=$(($len + 1))
9	done
10	
11	echo "Length: $len"
```


## String/StringReverse.sh
### Program To Reverse A String


```bash

1	# Program To Reverse A String
2	
3	read -p "Enter A String: " string
4	
5	len=${#string}
6	reverse=""
7	for ((i = $len - 1; i >= 0; i--))
8	do
9		reverse="$reverse${string:$i:1}"
10	done
11	
12	printf "Reverse: %s\n" "$reverse"
13	
```


## String/StringSearch.sh
### Program To Search A String In A Given String


```bash

1	# Program To Search A String In A Given String
2	
3	read -p "Enter A String: " str
4	read -p "Enter String To Be Searched: " search
5	searchLen=${#search}
6	max=$((${#str} - $searchLen))
7	index=-1
8	
9	for ((i = 0; i < max; i++))
10	do
11	    if [ "${str:$i:$searchLen}" = "$search" ]
12	    then
13	        index=$i
14	        break
15	    fi
16	done
17	
18	if (( $index != -1 ))
19	then
20	    echo "Searched String Is Present At Index: $index"
21	else
22	    echo "Not Found"
23	fi
```


## String/ToggleCase.sh
### Program To Toggle Case Of Every Character


```bash

1	# Program To Toggle Case Of Every Character
2	
3	read -p "Enter A String: " str
4	result=""
5	len=${#str}
6	
7	for ((i = 0; i < len; i++))
8	do
9	    char=${str:i:1}
10	    ascii=`printf "%d" "'$char"`
11	    if [ $ascii -ge 97 -a $ascii -le 122 ]
12	    then
13	        ascii=$(($ascii - 32))
14	        result=$result`printf \\\\$(printf "%o" $ascii)`
15	        
16	    elif [ $ascii -ge 65 -a $ascii -le 90 ]
17	    then 
18	        ascii=$(($ascii + 32))
19	        result=$result`printf \\\\$(printf "%o" $ascii)`
20	    else
21	        result=$result`printf \\\\$(printf "%o" $ascii)`
22	    fi
23	done
24	
25	echo "Toggle Case: $result"
```


## String/Trim.sh
### Program To Trim Extra Whitespaces In A String


```bash

1	# Program To Trim Extra Whitespaces In A String
2	
3	read -p "Enter A String: " str
4	result=""
5	
6	for ((i = 0; i < ${#str}; i++))
7	do  
8	    if [[ ${str:$i:2}  =~ [[:space:]][[:space:]] ]]
9	    then      
10	        continue
11	    else
12	        result=$result${str:$i:1}
13	    fi
14	done
15	
16	echo "Result: $result"
```


## String/UpperToLower2.sh
### Program To Convert Uppercase String To Lower Case String


```bash

1	# Program To Convert Uppercase String To Lower Case String
2	
3	read -p "Enter A String: " str
4	echo "Lower Case: ${str,,}"
```


## String/UpperToLower.sh
### Program To Convert Uppercase String To Lower Case String


```bash

1	# Program To Convert Uppercase String To Lower Case String
2	
3	read -p "Enter A String: " str
4	result=""
5	len=${#str}
6	
7	for ((i = 0; i < len; i++))
8	do
9	    char=${str:i:1}
10	    ascii=`printf "%d" "'$char"`
11	    if [ $ascii -ge 97 -a $ascii -le 122 ]
12	    then
13	        ascii=$(($ascii - 32))
14	        result=$result`printf \\\\$(printf "%o" $ascii)`
15	        
16	    else
17	        result=$result`printf \\\\$(printf "%o" $ascii)`
18	        # $(printf "%o" $ascii) Converts $ascii To Octal
19	        # printf \\octal Converts An Octal Number To Character
20	    fi
21	done
22	
23	echo "Upper Case: $result"
```


## String/Vowel.sh
### Program To Count Total Number Of Alphabets and Consonants In A String


```bash

1	# Program To Count Total Number Of Alphabets and Consonants In A String
2	
3	read -p "Enter A String: " str
4	vowels=0
5	consonants=0
6	
7	for (( i = 0; i < ${#str}; i++))
8	do
9	    alpha=${str:$i:1}
10	    if [[ $alpha =~ [aeiouAEIOU] ]] 
11	    then 
12	        vowels=$(($vowels + 1))
13	    elif [[ $alpha =~ [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] ]]
14	    then
15	        consonants=$(($consonants + 1))
16	    fi
17	done
18	
19	
20	echo "Vowels: $vowels"
21	echo "Consonants: $consonants"
```


## String/Words.sh
### Program To Input A Sentence And Count The Number Of Words


```bash

1	# Program To Input A Sentence And Count The Number Of Words
2	
3	read -p "Enter A Sentence: " str
4	len=${#str}
5	words=0
6	
7	if [ "$str" != "" ]
8	then
9	    for ((i = 0; i < $len - 1; i++))
10	    do
11	        if [[ ${str:$i:2}  =~ [[:space:]][^[:space:]] ]]
12	        then      
13	            words=$(($words + 1))
14	        fi
15	    done
16	else
17	    words=-1
18	fi
19	echo "Words: $(($words + 1))"
```

