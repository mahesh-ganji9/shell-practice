#!/bin/bash

NUM1=20
NUM2=30

SUM=$(($NUM1+$NUM2))

echo "SUM is $SUM"

#Arrays

Fruits=("Apple" "Orange" "Banana")

echo "Fruits are: ${Fruits[@]}"
echo "First Fruit is : ${Fruits[0]}"
echo "Second Fruit is : ${Fruits[1]}"
echo "Third Fruit is : ${Fruits[2]}"