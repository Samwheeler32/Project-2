#! /bin/bash

arr=(8 16 32)

for program in "$@"; do
	for sizes in "${arr[@]}"; do
		python3 "$program.py" "$sizes" >> "$program.out"
		sort -n "$program.out" 
	done
done

