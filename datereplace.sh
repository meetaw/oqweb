d1=$(date -d now +%j)
d2=$(date -d 20121028 +%j)
left=$(($d2-$d1))
oldleft=$(($left+1))
width=$((100-(($left*100)/60)))
lastwidth=$((100-(($oldleft*100)/60)))
sed -i "s/$oldleft days/$left days/g" ./*.html
sed -i "s/width: $lastwidth/width: $width/g" ./*.html
