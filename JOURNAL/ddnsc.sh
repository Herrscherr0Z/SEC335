#!/bin/bash

echo "We resolving it for you boss - one momento..."
net_prefix=$1
dns=$2

sudo nmap -sL $1/24 --dns-servers $2  | grep -E ".*\([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}\)" | awk {'print $5,$6'}
