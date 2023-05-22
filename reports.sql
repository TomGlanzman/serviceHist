/* reports.sql - create a set of reports in text format for use by viewReports.html */

.read tFormat.sql
.shell mkdir -p reports

.output reports/mgmt.txt
.read mgmt.sql

.output reports/mgmt-now.txt
.read mgmt-now.sql
--

.output reports/cc.txt
.read cc.sql

.output reports/cc-now.txt
.read cc-now.sql
--

.output reports/ombuds.txt
.read ombuds.sql

.output reports/ombuds-now.txt
.read ombuds-now.sql
--

.output reports/chairs.txt
.read chairs.sql

.output reports/chairs-now.txt
.read chairs-now.sql
--

.output reports/wg.txt
.read wg.sql

.output reports/wg-now.txt
.read wg-now.sql
--

.output reports/tt.txt
.read tt.sql

.output reports/tt-now.txt
.read tt-now.sql
--

.output reports/tf.txt
.read tf.sql

.output reports/tf-now.txt
.read tf-now.sql
--

.output reports/everyone.txt
.read everyone.sql
--

.output reports/groups.txt
.read groups.sql

.output reports/summary.txt
.read summary.sql

.output reports/smallTables.txt
.read smallTables.sql

.output reports/servers.txt
.read servers.sql

.output reports/schema.txt
.schema

.output

