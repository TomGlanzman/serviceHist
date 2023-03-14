#!/bin/bash
#
# who.sh - Trivial script to dump out history for a specific person
#  $ bash wg.sh [lastname | firstname | memidnum]
#

opt=$1

# Check of opt is a number (==> memidnum) or not (==> lastname) or <null>
if [[ "$opt" =~ ^[0-9]+$ ]]
then
    opt=' where MEMIDNUM='$opt' '
elif [ -n "$opt" ]
then
    opt=' where LastName like "%'$opt'%" or FirstName like "%'$opt'%"'
else
    opt=''
fi

# Define the location/name of the sqlite3 database file
dbfile="foo.db"

# And the command to run the query
cmd="sqlite3 -echo -header -table $dbfile "
sql1="select FirstName,LastName,MEMIDNUM,Role,GroupName,RoleStart,RoleEnd from DevSummary ${opt} order by RoleStart;"

# Run the query
$cmd "${sql1}"
echo

