# makeAllNames.sh - Produce a list of member names and ID numbers from the DESC OracleDB.
#               This script should be sourced ($ . ./AllNames.sh).
#               Configured to work from descops account on S3DF at SLAC.
#               Output is a text file:  AllNames.txt
dbviscmd -prefsdir ~descops/tom.dbvis -connection "DESC config-prod" -sqlfile ./AllNames.sql
#
# A slight different version of this command will also work on comet2 with an older dbvis:
#
# $ /opt/DbVisualizer/dbviscmd.sh -connection "config-prod" -sqlfile ./AllNames.sql
