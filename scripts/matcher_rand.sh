file=($(find ../experiment/10_20_10/))
databases=($(find ../databases/experiment/10_20_10/*))


for i in "${!databases[@]}"; do
filename=$(basename "${databases[$i]}")
extension="${filename##*.}"
filename="${filename%.*}"
echo $filename
music_file=${file[$i+1]}
echo $music_file
python /home/kd/Desktop/audfprint/audfprint.py match -h 20 -r 96000 --dbase "/home/kd/Desktop/audfprint/databases/experiment/10_20_10/$filename.pklz" "${music_file}" >> ~/Desktop/matcher_same_rand.log
done
