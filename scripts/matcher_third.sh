file=($(find ../experiment/10_20_10/* | sort))


for i in "${!file[@]}"; do
filename=$(basename "${file[$i]}")
extension="${filename##*.}"
filename="${filename%.*}"
echo $filename
num=$(($i-1))

music_file=${file[$num]}
if [ -z "${file[$num]}" ]; then
music_file=${file[${#file[@]}]}
fi
python /home/kd/Desktop/audfprint/audfprint.py match -h 20 -r 96000 --dbase "/home/kd/Desktop/audfprint/databases/experiment/10_20_10/$filename.pklz" "${music_file}" >> ~/Desktop/matcher_same2.log

done
