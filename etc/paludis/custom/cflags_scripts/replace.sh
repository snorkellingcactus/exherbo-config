#!/bin/sh

#Params : string , word , replacement

a=$1;
b=$2;
c=$3;

echo "${a/$b/$c}"
