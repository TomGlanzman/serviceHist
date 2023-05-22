/* reports.sql - create a set of reports in text format for use by viewReports.html */

.headers on
.mode table

.output mgmt.txt
.read mgmt.sql

.output mgmt-now.txt
.read mgmt-now.sql
--

.output cc.txt
.read cc.sql

.output cc-now.txt
.read cc-now.sql
--

.output ombuds.txt
.read ombuds.sql

.output ombuds-now.txt
.read ombuds-now.sql
--

.output chairs.txt
.read chairs.sql

.output chairs-now.txt
.read chairs-now.sql
--

.output wg.txt
.read wg.sql

.output wg-now.txt
.read wg-now.sql
--

.output tt.txt
.read tt.sql

.output tt-now.txt
.read tt-now.sql
--

.output tf.txt
.read tf.sql

.output tf-now.txt
.read tf-now.sql
--

.output everyone.txt
.read everyone.sql
--

.output groups.txt
.read groups.sql

.output summary.txt
.read summary.sql

.output smallTables.txt
.read smallTables.sql

.output servers.txt
.read servers.sql

.output schema.txt
.schema




/*
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
*/

.output

