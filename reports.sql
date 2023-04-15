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

.output smallTables.txt
.read smallTables.sql

.output coords.txt
.read coords.sql

.output ombuds.txt
.read ombuds.sql

.output servers.txt
.read servers.sql

.output schema.txt
.schema

.output

