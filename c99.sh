#!/bin/bash

echo ""
echo "EXTRACT SUBDOMAIN FROM subdomainfinder.c99.nl WITHOUT API KEY :)"
echo ""
sleep 1
echo "TARGET:$1.$2"

month=$(date +%m)
input="day.txt"
while IFS= read -r line
do
  sleep 1
  echo "$line"
curl https://subdomainfinder.c99.nl/scans/2023-$month-$line/$1.$2 > $line.txt
done < "$input"

cat 1.txt 2.txt 3.txt 4.txt 5.txt 6.txt 7.txt 8.txt 9.txt 10.txt 11.txt 12.txt 13.txt 14.txt 15.txt 16.txt 17.txt 18.txt 19.txt 20.txt 21.txt 22.txt 23.txt 24.txt 25.txt 26.txt 27.txt 28.txt 29.txt 30.txt 31.txt >> do.txt

rm -rf 1.txt 2.txt 3.txt 4.txt 5.txt 6.txt 7.txt 8.txt 9.txt 10.txt 11.txt 12.txt 13.txt 14.txt 15.txt 16.txt 17.txt 18.txt 19.txt 20.txt 21.txt 22.txt 23.txt 24.txt 25.txt 26.txt 27.txt 28.txt 29.txt 30.txt 31.txt

grep -Po '([a-z0-9][a-z0-9\-]{0,61}[a-z0-9]\.)+[a-z0-9][a-z0-9\-]*[a-z0-9]' do.txt > 1.txt

sort 1.txt | uniq > 2.txt

rm -rf do.txt 1.txt

grep  -Po "(^|^[^:]+:\/\/|[^\.].+\.)$1\.$2"  2.txt > 3.txt

rm -rf 2.txt


clear


echo ""
echo "RESULTS :"
echo ""
cat 3.txt

rm -rf 3.txt

