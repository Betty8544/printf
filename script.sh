#!/bin/bash

echo "program started........."
git pull

NEW_PATH=(`pwd`)

for file in $NEW_PATH/*
do
	git pull
	git add $file
	echo "Input message for $file : "
	read MSG
	git commit -m "$MSG"
	echo "$file - is pushed with a message $MSG\n"
done
