
#!/bin/bash
if [ $# -ne 2 ]; 
then
echo "Usage: $0 <file1> <file2>"
exit 1
fi
file1="$1"
file2="$2"
if cmp -s "$file1" "$file2" ;
then
 echo "The contents of the file are  same. Deleting file2..."
rm "$file2"
else
 echo "The contents  are different."
fi

                       file1.txt
                =================
hello

                       file2.txt
                =================
hello
