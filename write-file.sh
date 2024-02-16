#!/bin/sh
FILENAME=file.txt
for i in $(seq 1 20)
do
	printf "⚙️" >> "$FILENAME"
	git add "$FILENAME"
	git commit --no-verify --no-gpg-sign --author="Ghost <ghost@github.com>" -m "Update $FILENAME ($i)"
done

printf "🐛" >> "$FILENAME"

for i in $(seq 21 40)
do
	printf "⚙️" >> "$FILENAME"
	git add "$FILENAME"
	git commit --no-verify --no-gpg-sign --author="Ghost <ghost@github.com>" -m "Update $FILENAME ($i)"
done
