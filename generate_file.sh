#!/bin/bash

SEPARATOR=","

let it=0
let limit=10000

open_file() {
	echo -n "Creating the Dump file..."
	rm "dump.json"
	echo "[" >> "dump.json"
	cat "append.txt" >> "dump.json"
}
close_file() {
	echo "Completing the JSON"
	echo "]" >> "dump.json"
}
new_document() {
	sed -i "/^]}/ s/\$/$SEPARATOR/" "dump.json"
	cat "append.txt" >> "dump.json"
}

main(){
	open_file
	echo -en "\\rProgress: 0%                "
	while ((it < limit))
	do
		new_document
		((it++))
		echo -en "\\r Progress: $((it / 100))%"
	done
	close_file
}

main


