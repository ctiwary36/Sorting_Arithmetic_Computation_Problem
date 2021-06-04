#!/bin/bash -x
echo "Arithmetic Compution And Sorting"

read -p "Enter first input :" a
read -p "Enter second input:" b
read -p "Enter third input :" c

result=$(( a+(b*c) )) 
echo "Result:" $result
result1=$(( (a*b)+c ))

echo "Result1:" $result1
result2=$(( c+(a/b) ))
echo "Result2:" $result2


result3=$(( (a%b)+c ))

echo "Result3:" $result3
arithmaticOperation[result]=$result
arithmaticOperation[resultOne]=$result1
arithmaticOperation[resultTwo]=$result2
arithmaticOperation[resultThree]=$result3

for((index=0; index<=${#arithmaticOperation[@]}; index++))
do
  array[index]=${arithmaticOperation[result$((index+1))]}
done
echo "${array[@]}"
