#!/bin/bash

for filename in *.ijs
do
  echo  Compressed file "$filename"
	grep . "$filename" | grep -E -v '^NB.|assert|^inx' | tee "$filename" > /dev/null
done 
