/* mgmt.sql - print out DESC management team history */
.trace stdout
.print Complete history of DESC management team
.print

select * from DevSummary where RoleID < 5 order by RoleStart,RoleID;



.trace off
