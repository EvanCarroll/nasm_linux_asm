#!/bin/sh

FILE="out/visibility"

printf "\n\n===nm out/visibility===\n"
nm "$FILE"

printf "\n\n===readelf --symbols==="
readelf --symbols "$FILE"

# question asked about showing visibility w/ radare
# https://reverseengineering.stackexchange.com/q/19507/22669
printf "\n\n===radare2 -qc 'fs symbols; f'===\n"
radare2 -qc 'fs symbols; f' "$FILE"
