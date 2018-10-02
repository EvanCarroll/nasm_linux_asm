#!/bin/sh

printf "\n\n===nm out/visibility===\n"
nm out/visibility

printf "\n\n===readelf --symbols==="
readelf --symbols out/visibility
