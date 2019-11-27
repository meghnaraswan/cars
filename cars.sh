#! /bin/bash
#cars.sh
#Meghna Raswan
while true; do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	echo -n "Number: "; read -r number
	case "$number" in
		"1")
			echo -n "Year: "; read year
			echo -n "Make: "; read make
			echo -n "Model: "; read model
			echo $year: $make: $model >> My_old_cars
			;;
		"2")
			sort My_old_cars
			;;
		"3")
			echo "Goodbye"
			break
			;;
	esac
done
