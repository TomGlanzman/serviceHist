# makeAllNames.sh - Produce a list of member names and ID numbers from the DESC OracleDB.
#
#               This script should be sourced ($ . ./makeAllNames.sh)
#               from within the serviceHist directory.
#
#               Configured to work from descops account on S3DF at
#               SLAC using Tom's dbvis profile.  Output is a text
#               file: AllNames.txt
#
dbviscmd -prefsdir ~descops/tom.dbvis -connection "sca config" -sqlfile ./AllNames.sql
#
# A slightly different version of this command formerly worked on comet2 with an older dbvis:
# $ /opt/DbVisualizer/dbviscmd.sh -connection "config-prod" -sqlfile ./AllNames.sql
