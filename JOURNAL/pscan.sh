#! /bin/bash

nmap -sS --open -oG - -p 53 10.0.5.0/24 | grep 53/open
