#!/bin/bash

let it=0
let limit=100

main(){
	echo -en "\\rProgress: 0%                "
	while ((it < limit))
	do
		cat "dump.json" | couchimport
		((it++))
		echo -en "\\r Progress: $((it))%"
	done
}

main


