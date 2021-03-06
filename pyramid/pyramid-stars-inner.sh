#!/bin/bash

read -r -p "Enter depth of pyramid: " n
echo "You enetered level: $n"

space=n

for((i=1;i<=n;i++))
do
        space=$((space-1)) #calculate how many spaces should be printed before *

        for((j=1;j<=space;j++))
        do
                echo -n " " #print spaces on the same line before printing *
        done
        for((k=1;k<=i;k++))
        do
                echo -n "*" #print * on the same line
                echo -n " " #print space after * on the same line
        done
        echo -e #print new line after each row
done