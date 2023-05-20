.headers off
.mode list
.separator ""
select "Summary of DESC serviceHistory database as of ",date();
.headers on
.mode box
select groupname,count(*) from devsummary group by groupid order by count(*) desc limit 5; 
