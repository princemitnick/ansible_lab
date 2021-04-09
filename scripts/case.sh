#!/bin/bash

echo "Enter the name of a state"
read STATE
echo -n "The capital city of $STATE is : "

case $STATE in
	Georgia)
		echo "Atlanta"
		;;
	Virginia)
		echo "Richmond"
		;;
	Texas)
		echo "Austin"
		;;
	"New York")
		echo "Whashington"
		;;
	*)
		echo "Not in the database"
		;;
esac

