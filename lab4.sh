#!/bin/bash

#1
touch file.txt
chmod 744 file.txt

#2
chmod a+x file.txt

#3
chmod g-x file.txt
chmod o-x file.txt
#4
chmod a-rwx file.text
chmod u+r file.text
chmod 600 file.txt

#5
mkdir dir
chmod 666 dir
#we gve wrong permissions the executable part is missing
touch dir/file.txt
chmod 777 dir
touch dir/file.txt
#6
touch dir/file1.txt dir/file2.txt
chmod 766 dir/*

#7
umask 0137

#8
umask 0077
umask 0022

#9
cd home/student
touch script.sh
chmod 344 script.sh
./script.sh
chmod 777
./script.sh

#10
mkdir ~/bin
mv script.sh ~/bin
echo 'export PATH=$PATH:~bin' >> ~/bashrc
source ~/.bashrc

