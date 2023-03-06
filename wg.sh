#!/bin/bash
#
# wg.sh - Trivial script to dump out working group conveners
#  $ bash wg.sh [lastname | memidnum]
#

opt=$1

# Define the location/name of the sqlite3 database file
dbfile="foo.db"
cmd="sqlite3 -echo -header -table $dbfile "

# Check of opt is a number (==> memidnum) or not (==> lastname) or <null>
if [[ "$opt" =~ ^[0-9]+$ ]]
then
    opt=' and MEMIDNUM='$opt' '
elif [ -n "$opt" ]
then
    opt=' and LastName like "%'$opt'%" '
else
    opt=''
fi

echo "          ==================================================================="
echo "          =========[co-]conveners============================================"
echo "          ==================================================================="

if [ -z "$opt" ]
then
    echo "=====by name====="
    sql1="select FirstName,LastName,MEMIDNUM,GroupName,RoleStart,RoleEnd from DevSummary where RoleID in (9) ${opt} order by LastName,RoleStart;"
    $cmd "${sql1}"
    echo
fi

echo "=====by group====="
sql2="select FirstName,LastName,MEMIDNUM,GroupName,RoleStart,RoleEnd from DevSummary where RoleID in (9) ${opt} order by GroupID,RoleStart;"
$cmd "${sql2}"

