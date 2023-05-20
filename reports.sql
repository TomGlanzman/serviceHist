/* reports.sql - create a set of reports in text format */

.headers on
.mode table

.output wg.txt
.read wg.sql

.output advisory.txt
.read advisory.sql

.output cc.txt
.read cc.sql

.output chairs.txt
.read chairs.sql

.output groups.txt
.read groups.sql

.output mgmt.txt
.read mgmt.sql

.output coords.txt
.read coords.sql

.output ombuds.txt
.read ombuds.sql

.output servers.txt
.read servers.sql

.output everyone.txt
.read everyone.sql

.output summary.txt
.read summary.sql

.output smallTables.txt
.read smallTables.sql

.output schema.txt
.schema




.mode csv

.output wg.csv
.read wg.sql

.output advisory.csv
.read advisory.sql

.output cc.csv
.read cc.sql

.output chairs.csv
.read chairs.sql

.output groups.csv
.read groups.sql

.output mgmt.csv
.read mgmt.sql

.output smallTables.csv
.read smallTables.sql

.output coords.csv
.read coords.sql

.output ombuds.csv
.read ombuds.sql

.output servers.csv
.read servers.sql

.output everyone.csv
.read everyone.sql

.output schema.csv
.schema


.output

