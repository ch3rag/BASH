# Program To Accept A Coordinate Point (X, Y) And Determine Which Quadrant The Point Lies

read -p "Enter X Co-ordinate: " x
read -p "Enter Y Co-ordinate: " y

if (( x > 0 && y > 0 ))
then
	echo "First Quadrant"
elif (( x < 0 && y > 0 ))
then
	echo "Second Quadrant"
elif (( x < 0 && y < 0 ))
then
	echo "Third Quadrant"
elif (( x > 0 && y < 0 ))
then
	echo "Fourth Quadrant"
else
	echo "Point Lies On Axes"
fi
