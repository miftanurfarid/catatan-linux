#!/bin/bash

ls *.wav > list.txt

while read a; do
	soxi -D $a >> length.txt
done < list.txt;