/* servers.sql - list DESC servers in order of number of jobs */

.print List of DESC servers
select FirstName,LastName,count(MEMIDNUM) from DevSummary group by MEMIDNUM order by count(MEMIDNUM) desc, LastName asc;
