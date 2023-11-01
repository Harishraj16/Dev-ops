#!/bin/bash
 
echo "Enter age:"
read age

if [ "$age" -gt 18 ]; then
	echo "Eligibile" 
elif [ "$age" -eq 18 ]; then
	echo "Eligible soon"
else
	echo "Not eligible"
fi
