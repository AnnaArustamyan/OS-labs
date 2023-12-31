#!/bin/bash

#1
ls /etc | grep '[0-9]'

#2
echo "Hello\nWorld\nTestlo\nHillo\nOtherlo\n" >> test_file.txt
grep -E '^\b[a-zA-Z]{3}lo$' test_file.txt

#3
#Command 1 searches for lines with uppercase letters.
#Command 2 searches for lines with '-', 'A', or 'Z'.
#Command 3 searches for lines that start with an uppercase letter.
#Command 4 searches for lines with characters not in the range A-Z.
grep -h '[A-Z]' dirlist*.txt
grep -h '[-AZ]' dirlist*.txt
grep -h '^[A-Z]'dirlist*.txt
grep -h '[^A-Z]'dirlist*.txt

#4
grep -E '^(bz|zip)' dirlist-bin.txt dirlist-sbin.txt

#5
grep -Eh '^(bz|gz|zip)' dirlist*.txt # Փնտրում է «bz», «gz» կամ «zip» տողեր:
grep -Eh '^bz|gz|zip' dirlist*.txt   # Որոնում է «bz»-ով սկսվող կամ «gz» կամ «zip» պարունակող տողեր:
echo oooooooo
#6
echo "test@test.com" | grep -E '^[a-zA-Z0-9._]+@[a-zA-Z0-9.-]+\.([a-zA-Z]{2,})$'

#7
echo "192.168.0.1" | grep -E '^([0-9]{1,3}\.){3}[0-9]{1,3}$'

#8
echo level > data.txt
grep -E '\b(.)(.)(.).?\3\2\1\b' data.txt
#9
echo "01/02/1970" | sed -E 's~([0-9]+)/([0-9]+)/([0-9]+)~\3-\2-\1~'

#10
echo "0xx 12-34-56" | sed -E 's~^(0xx) ([0-9]{2})-([0-9])([0-9])-([0-9]{2})$~(\1) \2\3-\4\5~'
