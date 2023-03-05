#!/bin/bash 

#redirect the output of task 1 to a file directorydata
echo "Number of subdirectories in the present directory:" > directorydata
find . -maxdepth 1 -type d | wc -l  >> directorydata

#redirect the output of task 2 to the file directorydata
echo -e "\nNumber of files in the directory:" >> directorydata
find . -maxdepth 1 -type f | wc -l >> directorydata

#redirect the output of task 3 to the file directorydata
echo -e "\nList of the files in the directory that has zero length:" >> directorydata
find . -maxdepth 1 -type f -size 0 >> directorydata

#redirect  the output of task 4
echo -e "\nDisk space used by files:" >> directorydata
du -sh * >> directorydata

#all jobs are done.
