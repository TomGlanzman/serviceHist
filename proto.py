#!/usr/bin/env python3
## Create various reports for DESC serviceHist database
##
## T.Glanzman - April 2023
__version__ = "0.1.0beta"

import sys,os
import sqlite3
from tabulate import tabulate
import datetime

import argparse
#import matplotlib.pyplot as plt



######################
# UTILITY FUNCTIONS
######################

def getSQLfromFile(filename):
    ## Read text file of sql and produce clean LIST of individual sql commands
    with open(filename,'r') as f:
        sql=f.read()
        pass
    #print(f'sql from file:\n{sql}\n\n=============================\n\n')    ########## DEBUG ONLY #############
    
    ## Remove SQL /* comments */
    while True:
        start=sql.find('/*')
        end=sql.find('*/')+2
        if start == -1: break
        #print(f'removing: {sql[start:end]}')
        sql=sql[:start]+sql[end:]
        pass
    
    ## Remove SQL "--" (whole line, including \n) comments
    while True:
        start=sql.find('\n--')
        if start == -1: break
        start += 1
        end=sql.find('\n',start)+1
        #print(f'removing: {sql[start:end]}')
        sql=sql[:start]+sql[end:]
        pass
    
    ## Remove SQL "--" inline (not including \n) comments
    while True:
        start=sql.find('--')
        if start == -1: break
        end=sql.find('\n',start)
        #print(f'removing: {sql[start:end]}')
        sql=sql[:start]+sql[end:]
        pass
    
    ## Remove special sqlite directives (entire lines beginning with ".")
    while True:
        start = sql.find('\n.')
        if start == -1: break
        start = start + 1
        end = sql.find('\n',start)+1
        #print(f'removing: {sql[start:end]}')
        sql=sql[:start]+sql[end:]
        pass
    
    ## Must split multiple sql commands into separate python sqlite3 calls
    sqlList = sql.split(';')
    sqlList = sqlList[:-1]   # remove last (empty) element in list
    #print(f'There were {len(sqlList)} sql commands found in the file')
    return sqlList





##########
# MAIN
##########


# Read command line options

reportTypes = ['cc','mgmt','membership','pubboard']

parser = argparse.ArgumentParser(description='Create text reports based on DESC serviceHist database',
                                 usage='$ python3 xxxxx [options] {reportType}',
                                 epilog='Note that not all options are meaningful for all report types.')
parser.add_argument('reportType',help='Type of report to display (default=%(default)s)',nargs='?',default='mgmt')
parser.add_argument('-f','--file',default='./foo.db',help='Name of sqlite database file containing serviceHist data (default=%(default)s)')
#parser.add_argument('-s','--sort')
#parser.add_argument('-t','--timeStart')
#parser.add_argument('-T','--timeStop')

#parser.add_argument('-n','--taskName',default=None,help="specify task_func_name")
#parser.add_argument('-x','--extendedCols',action='store_true',default=False,help="print out extended columns")

args = parser.parse_args()


# Define parameters

dbFile = args.file  # Name of sqlite3 database file containing serviceHist data
tblfmt = 'psql'   # Used by tabulate to specify output format
cols1="FirstName,LastName,GroupName,Role,RoleStart,RoleEnd"

sql={'cc':f'select {cols1} from DevSummary where GroupID=1 order by RoleStart;',
     'membershipComm':f'select {cols1} from DevSummary where GroupID=7 order by RoleStart;'
     }

t=f'''
  select FirstName,LastName,GroupName,Role
  from DevSummary
  where GroupID=6
  order by LastName;
'''


# Initialize database connection

con = sqlite3.connect(dbFile,timeout=30) ## connect to sqlite3 DB file
cur = con.cursor()                       ## create a 'cursor'



# Produce requested report

repType = args.reportType
if repType not in reportTypes:
    print(f'Unrecognized report type: {repType}')
    print(f'Bye...')
    sys.exit()

if repType == 'mgmt':
    print(f'mgmt report')
    sqlList=getSQLfromFile('mgmt.sql')
    cycle=1
    for sql in sqlList:
        print(f'Management cycle {cycle}:')
        cycle+=1
        cur.execute(sql)
        r=cur.fetchall()
        print(tabulate(r,tablefmt=tblfmt))
        pass
    
elif repType == 'cc':
    print(f'cc report')
else:
    print(f'Unimplemented report type: {repType}')
    pass


# DONE

sys.exit()





# Fetch list of tables in this DB file

cur.execute(f"SELECT name FROM SQLITE_MASTER WHERE TYPE='table';")
tableList = cur.fetchall()
cur.execute(f"SELECT name FROM SQLITE_MASTER WHERE TYPE='view';")
viewList = cur.fetchall()

#print(tableList)
#print(viewList)


# Simple query

now=datetime.datetime.now()
sqlx="select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd from DevSummary where GroupID=77 order by RoleStart;"
sqlx=sql["membershipComm"]
sqlx=t
cur.execute(sqlx)
g6=cur.fetchall()        # list of DB rows in result set
g6titlez=cur.description
g6titles=[]
for title in g6titlez:
    g6titles.append(title[0])


# Pretty print

print(f'Data as of {now}')
print(tabulate(g6,headers=g6titles,tablefmt=tblfmt))



# Wrap-up

con.close()  # close connection to sqlite3 DB file
