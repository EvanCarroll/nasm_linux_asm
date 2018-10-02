#!/bin/sh

FILE="out/visibility"

printf "\n\n===nm out/visibility===\n"
nm "$FILE"

printf "\n\n===readelf --symbols==="
readelf --symbols "$FILE"

printf "\n\n===radare2 -qc 'fs symbols; f'===\n"
radare2 -qc 'fs symbols; f' "$FILE"
