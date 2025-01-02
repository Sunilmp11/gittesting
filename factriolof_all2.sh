#!/bin/bash
for i in $@; do
num=$i
fact=1
while [ $num -gt 1 ]; do
fact=$(($num * $fact))
num=$(($num - 1))
done
echo "$fact"
done
