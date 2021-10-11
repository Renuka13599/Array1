#!/bin/bash -x
declare -a Number
for((i=0;i<=9;i++))
do
        x=`shuf -i 100-999 -n1`
        Number[$i]=$x
done
echo ${Number[@]}

max=0
min=999
for i in "${Number[@]}"
        do
                if (( $i > $max ))
                then
                max=$i
                fi

                if (( $i < $min ))
                then
                min=$i
                fi
        done
echo "First Largest Number is $max"
echo "First smallest number is $min"

delete=($max $min)
for ele in "${delete[@]}"                               #target element
do
        for idx in "${!Number[@]}"                      #index of target element
        do
                if [ $ele == ${Number[$idx]} ]
                then
                unset Number[$idx]
                fi
        done
done

max=0
min=999
for i in "${Number[@]}"
        do
                if (( $i > $max ))
                then
                max=$i
                fi

                if (( $i < $min ))
                then
                min=$i
                fi
        done

echo "Second Largest Number is $max"
echo "Secong smallest Number $min"





