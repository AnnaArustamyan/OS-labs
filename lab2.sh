#1
#creates  file1 waits for user input until ctrl+d
echo enter text
cat > file1 

#displays file1 content from file/ from stram
cat file1 

cat < file1 

#2
echo enter text
cat > file1.txt
echo enter text
cat > file2.txt
echo enter text
cat > file3.txt
cat file1.txt file2.txt file3.txt > Final.txt

#3
ls -l *.txt | wc -l

#4
cat file1.txt file2.txt file3.txt | sort > sorted.txt

#5
echo ex 5
ls -S ./ | head -n 15

#6
echo ex 6
ls ./ > ls.txt

#7 
echo "secret text" | tr 'a-zA-Z' 'n-za-mN-ZA-M'
echo "frperg grkg" | tr 'a-zA-Z' 'n-za-mN-ZA-M'

#8
echo "Student’s home directory is {home_dir}." > home.txt
sed -i 's/{home_dir}/\/home\/student/' home.txt
#9
echo "Line 1" > file4.txt
echo "Line 2" >> file4.txt
echo "Line 3" >> file4.txt
echo "Line 4" >> file4.txt
echo "Line 5" >> file4.txt
sed -n '2,4p' file4.txt

#10
sed -i '2,4d' file4.txt
