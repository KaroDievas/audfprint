#!/bin/sh
cd "../experiment/10_20_10/"
for file in *;
do
filename=$(basename "$file")
extension="${filename##*.}"
filename="${filename%.*}"
echo "$file" 
echo $filename

python /home/kd/Desktop/audfprint/audfprint.py new -h 20 -r 96000 --dbase "/home/kd/Desktop/audfprint/databases/experiment/10_20_10/$filename.pklz" "$file" >> log.log


done
