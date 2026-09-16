#!/bin/bash
x=8
Q=2
y=2
power=$((x ** Q))
result=1
ans=0
while [ $result -lt $power ]
do
	result=$((result * y))
	ans=$((ans+1))
done
echo "$ans"
