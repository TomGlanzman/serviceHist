/* servers.sql - list DESC servers in order of number of jobs */

.read cFormat.sql
select "Summary of DESC service roles per person as of ",date();

.read tFormat.sql
select FirstName,LastName,count(MEMIDNUM) from HistSummary group by MEMIDNUM order by count(MEMIDNUM) desc, LastName asc;
