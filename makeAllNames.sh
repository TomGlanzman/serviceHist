# makeAllNames.sh - Produce a list of member names and ID numbers from the DESC OracleDB.
#               This script should be sourced ($ . ./makeAllNames.sh).
#               Configured to work from descops account on S3DF at SLAC
#               using Tom's dbvis profile.
#               Output is a text file:  AllNames.txt
dbviscmd -prefsdir ~descops/tom.dbvis -connection "SRS Config" -sqlfile ./AllNames.sql
#
# A slight different version of this command formerly worked on comet2 with an older dbvis:
# $ /opt/DbVisualizer/dbviscmd.sh -connection "config-prod" -sqlfile ./AllNames.sql
