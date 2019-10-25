#!/bin/bash
mkdir $1
curl -s https://certspotter.com/api/v0/certs\?domain\=$1 | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\_//g' | sort -u | grep $1 > ~/$1/$1.txt
