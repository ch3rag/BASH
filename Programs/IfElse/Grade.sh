# Program to input marks of five subjects Physics, Chemistry, Biology, Mathematics and Computer. Calculate percentage and grade according to following:
# Percentage >= 90% : Grade A
# Percentage >= 80% : Grade B
# Percentage >= 70% : Grade C
# Percentage >= 60% : Grade D
# Percentage >= 40% : Grade E
# Percentage < 40% : Grade F
read -p "Enter Marks In Physics: " physics
read -p "Enter Marks In Chemistry: " chemistry
read -p "Enter Marks In Biology: " biology
read -p "Enter Marks In Math: " math
read -p "Enter Marks In Computer: " computer

percentage=$(( ($physics + $chemistry + $biology + $math + $computer) / 5 ))

echo "Percentage: $percentage%"

if (( $percentage >= 90 )) 
then
    echo "Grade A"
elif (( $percentage >= 80 ))
then 
    echo "Grade B"
elif (( $percentage >= 70 ))
then 
    echo "Grade C"
elif (( $percentage >= 60 ))
then 
    echo "Grade D"
elif (( $percentage >= 40 ))
then 
    echo "Grade E"
else
    echo "Grade F"
fi
