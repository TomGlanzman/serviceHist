#!/bin/bash
#  silly script to return DESC member name and MEMIDNUM from a text file,
#  AllNames.txt, from a hint: either part of the name or part of the MEMIDNUM

while read -p 'key: ' line
do
    if [ ${#line} -eq 0 ]
    then
	continue
    fi
    case $line in
	''|*[0-9]*) (grep -iE ^$line AllNames.txt | sort -n) ;;
	*) (grep -i $line AllNames.txt | sort -n)  ;;
    esac
    
done
##done < "${1:-/dev/stdin}"
exit

