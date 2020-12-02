#!/bin/bash

read -p "enter a number: " num
j=2
limit=256

for (( i=1; i<$num; i++ ))
do
        res=$(( $j * 2 ))
        j=res
done

if [ $res -gt $limit ]
then
	echo "___: Value Out of range.."
else
	echo "result for 2^$num is= $res"
fi
