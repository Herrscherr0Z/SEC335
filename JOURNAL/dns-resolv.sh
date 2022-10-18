#!/bin/bash

subnet=$1
dns=$2

for i in {1..254}
 do sudo nslookup $1.$i $2 | grep "name"

done
