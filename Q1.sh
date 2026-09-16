#!/bin/bash
echo "Enter x: "
read x
Str=$x
rev=0
while [ $x -gt 0 ]
do	
	n=$((x % 10))
	rev=$((10 * rev + n))
	x=$((x / 10))
done

if [ $Str -eq $rev ]
then
	echo "Pallindrome"
else
	echo "Not Pallindrome"
fi
echo "Question Solved! Great job!."
