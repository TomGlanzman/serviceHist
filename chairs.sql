/* chairs.sql */
.trace stdout
.print Complete history of committee chairs
.print

select * from DevSummary where RoleID in (10) order by LastName,RoleStart;

select * from DevSummary where RoleID in (10) order by GroupID,RoleStart,LastName;

.trace off
