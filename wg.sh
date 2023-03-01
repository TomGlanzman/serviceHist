#!/bin/bash
#
# wg.sh - Trivial script to dump out working group conveners
#  $ bash wg.sh [lastname]
#

lastname=''
if [ -n "$1" ]
then
   lastname=' and LastName like "'$1'" '
fi

opt=$1
echo opt="$opt"

is_int () { case $1 in '' | *[!0-9]*) return 1;; esac ; }
is_int $opt
echo $?
echo -------------------

if [ ( is_int "$opt" ) -eq 0 ]
then
    opt=' and MEMNUMID='$opt' '
elif [ -n "$opt" ]
then
    opt=' and LastName like "'$opt'" '
else
    opt=''
fi

echo opt=$opt







#sql="select FirstName,LastName,MEMIDNUM,GroupName,RoleStart,RoleEnd from DevSummary where RoleID in (9) ${lastname} order by LastName,RoleStart;"

#sqlite3 -header -table -echo foo.db "${sql}"

#sqlite3 -header -table foo.db 'select * from DevSummary where RoleID in (9) order by LastName,RoleStart limit 10;select * from DevSummary where RoleID in (9) order by GroupID,RoleStart limit 10;'
