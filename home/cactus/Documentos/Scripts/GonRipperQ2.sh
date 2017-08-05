#!/bin/sh 
# simple script that rips CDs to a format useable by Yamagis Quake2 client 
# Needs cdparanoia and oggenc, useable with Quake II and both addons. 

# Create directory

# could certainly be more elegant.. 
for i in "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" 
do 
  mpg321 $i.mp3 -w - |  oggenc -q 6 -o $i.ogg -
done 

# remove .wav files 

echo -e "\n Ripping done, move /tmp/music/ directory to /usr/share/games/quake2/<moddir>/music/"
echo "(/usr/share/games/quake2/baseq2/music/ for the main game)"
