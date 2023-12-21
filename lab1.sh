#!/bin/bash
#1
mkdir lab1
cd lab1
touch file.txt file1.txt file2.txt file3.txt
mkdir dir1 dir2

#2
echo explain the difference between the following commands
ls *.txt
ls * .txt

#3
echo 4symbols and starts with f
ls f???.txt

#4
echo starts with file followed by a digit 
ls file[0-9]*.txt

#5
echo last symbol is lowercase or 1,2
ls *[1-2,lower].txt

#6
echo copy /etc/passwd to lab1
cp /etc/passwd /mnt/c/Users/nnaru/Desktop/Labs/lab1/
#cp /etc/password lab1/

#7
echo new in dir2
mv passwd new
mv new dir1/
mv dir1/new dir2/

#8
echo dir2=dir3 in dir1
mv dir2/ dir3/
mv dir3/ dir1/

#9
mv dir1/dir3/new ..

#10
cd ..
rm -rf lab1
