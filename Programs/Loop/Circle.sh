# Program To Input Radius Of A Circle And Print It's Circumference And Area

read -p "Enter Radius: " radius

circumference=`echo "scale=5; 2 * 3.14159 * $radius" | bc`
area=`echo "scale=5; 3.14159 * $radius * $radius" | bc`

printf "Circumference: %f\nArea: %f\n" $circumference $area
