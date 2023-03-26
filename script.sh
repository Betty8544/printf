#!/bin/bash

.........program started.........
git pull

NEW_PATH=(`pwd`)

for file in $NEW_PATH/*.c
do
	git pull
	git add $file
	git commit -m "Update"
	echo "$file is pushed"
done
