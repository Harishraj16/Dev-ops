#!/bin/bash

for num in {1..100}; do
if ((($num%3 == 0 || $num%5 == 0) && $num%15 != 0 )) 
then
	echo "$num"
fi
done
