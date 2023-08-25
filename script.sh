#!/usr/bin/bash
var1=$1
var2=$2
# echo $var1
if [ "$var1" == "-a" ]; then
    sed -i "13i $var2" main.tex
fi