echo "Enter source base: "
read x
echo "Enter number: "
read n
decimal=0
power=1

while [ $n -gt 0 ]
do
	rem=$((n % 10))
	decimal=$((decimal + power * rem))
	power=$((power * x))
	n=$((n / 10))
done

echo "Target base: "
read u
result=()
i=0
while [ $decimal -gt 0 ]
do	
	rem=$((decimal % u))
	result[i]=$rem
	i=$((i+1))
	decimal=$((decimal / u))

done
while [ $i -gt 0 ]
do
	i=$((i-1))
	echo -n "${result[i]}"
done
