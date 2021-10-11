#!/bin/bash -x
#declare -a Number
for((i=0;i<=9;i++))
do
        x=`shuf -i 100-999 -n1`
        a[$i]=$x

done
echo ${a[@]}
Number=($(sort -nr <(printf "%s\n" "${a[@]}")))
echo "The output After sorting number" ${Number[@]}


echo "The 2nd Smallest number is ${Number[8]}"
echo "The 2nd Largest number is ${Number[1]}"

