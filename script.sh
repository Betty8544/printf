#!/bin/bash

echo "program started........."
git pull

NEW_PATH=(`pwd`)

for file in $NEW_PATH/*
do
	git pull
	git add $file
	git commit -m "update"
	echo "[+] $file - is pushed"
done
