#!bin/bash

Number1=$1
Number2=$2

Timestamp=$(date)

echo "Script executed at $Timestamp"
Sum=$(($Number1+$Number2))

echo "Sum of $Number1 and $Number2 is: $Sum" 

