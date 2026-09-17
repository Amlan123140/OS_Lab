#!/bin/bash

echo "Enter string: "
read str

i=0
j=$((${#str} - 1))

while [ $i -lt $j ]
do
    if [ "${str:$i:1}" != "${str:$j:1}" ]
    then
        echo "Not Palindrome"
        exit
    fi

    i=$((i + 1))
    j=$((j - 1))
done

echo "Palindrome"
