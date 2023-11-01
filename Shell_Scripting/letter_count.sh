#!/bin/bash

echo "Enter the Word: "
read x
echo "Enter the letter: "
read l
r=$(grep -o "$l" <<<"$x" | wc -l)
echo "Number of times $l occured: $r"
