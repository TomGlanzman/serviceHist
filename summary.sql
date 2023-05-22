/* summary.sql - DB statistical summary */

.read cFormat.sql
select "Summary of DESC serviceHistory database as of ",date();

.read tFormat.sql
.print Number of serviceHistory records per group
select groupname,count(*) from HistSummary group by groupid order by count(*) desc; 
