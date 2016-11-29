#!/usr/bin/env bash

path=${1:-vendor/*}

for folder in $path; do
	dep=$(basename $folder)
	if [ -d ../$dep ]; then
		sudo mount --bind ../$dep vendor/$dep
	fi
done
