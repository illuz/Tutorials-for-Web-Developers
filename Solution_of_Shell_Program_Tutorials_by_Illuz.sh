#!/bin/bash
# Solution_of_Shell_Program_Tutorials_by_Illuz.sh created by illuz at 2015-02-03 23:07:10
# My solution of Shell Program Tutorials
# :)

mkdir final
cd final

# create file
for I in {1..10}
do
	touch ft-${I}.txt
	echo 'This is a test file...!!' > ft-${I}.txt
done

# change name
for F in ft-*.txt
do
	NEW=$(echo ${F} | sed -e "s#^f#F#g")
	mv ${F} ${NEW}
done

# convert lower case to upper
for F in Ft-*.txt
do
	# 1. use 'sed' replace pattern
	sed -i 's#\(.*\)#\U\1#g' ${F}
	# 2. or try 'tr
	# tr '[:lower:]' '[:upper:]' < ${F} > tmpfile
	# mv tmpfile ${F}
done

# copy file to new_folder
mkdir new_folder
mv Ft-*.txt new_folder

exit 0

