#!/bin/bash
find *.png > index.html
# cat index.html |
# grep -oP '(?<=\<a href=").+(?="\>)' > tmp.txt
# cat tmp.txt
cat index.html | while read -r line
do
    echo "<a href=\"${line}\">${line}"
done > tmp.txt
cat tmp.txt > index.html

ls -lh | grep 'png$' | grep -oP '(?<=stepney141 stepney141) [ -~]+ (?=Nov 11)' > tmp.txt
cat tmp.txt | while read -r line
do
    echo "(${line})</a>"
done > tmp2.txt
paste index.html tmp2.txt > tmp3.txt
cat tmp3.txt > index.html

rm *.txt