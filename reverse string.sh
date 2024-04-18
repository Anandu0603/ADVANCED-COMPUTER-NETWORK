#!/bin/bash
my_list=("anandu" "aswini" "hebal" "nandhu")
# Reverse the order of the list
my_list=($(echo "${my_list[@]}" | tr ' ' '\n' | tac | tr '\n' ' '))
# Reverse each string in the list
for i in "${!my_list[@]}"
do
my_list[$i]=`echo ${my_list[$i]} | rev`
done
# Print the reversed list of strings
echo "${my_list[@]}"


OUTPUT
mlm@mlm-desktop:~/Desktop/mkdir$ chmod +x reversed.sh
mlm@mlm-desktop:~/Desktop/mkdir$ ./reversed.sh
uhdnan labeh iniwsa udnana
mlm@mlm-desktop:~/Desktop/mkdir$ 
