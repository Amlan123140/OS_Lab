#!/bin/bash

echo "Enter string: "
read str

rev=""
i=0

while [ $i -lt ${#str} ]
do
    rev="${str:$i:1}$rev"
    i=$((i + 1))
done

if [ "$str" = "$rev" ]
then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi
