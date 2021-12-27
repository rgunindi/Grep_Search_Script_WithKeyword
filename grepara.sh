#!/bin/bash
searchKeyword=""
searchAddress="."
while [[ $searchKeyword = "" ]] 
do
read -p "Enter search keyword: " searchKeyword
read -p "Enter the address to search for:" searchAddress
	if [[ $searchAddress = ""  ]] 
		then searchAddress=.
	fi
done

grep -Ir --exclude="*\.git*" "$searchKeyword" "$searchAddress"
