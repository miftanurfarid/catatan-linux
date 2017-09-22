#!/bin/bash

ls *.wav > list.txt

while read a; do
	sox $a --bits 16 --encoding signed-integer --endian litle ${a//.wav/.raw}
done < list.txt