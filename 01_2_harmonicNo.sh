
#!/bin/bash
read -p "enter a number: " num
har=1
echo "harmonic number result "
for (( i=2; i<=$num; i++ ))
do
	har=$(echo "$har + (1/$i)")
done
echo $har
