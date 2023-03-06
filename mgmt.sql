/* mgmt.sql - print out DESC management team history */
.trace stdout
.print Complete history of DESC management team
.print

select FirstName,LastName,MEMIDNUM,Role,RoleID,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (0,1,2,3,4) order by RoleStart,RoleID,GroupName,LastName;

.trace off
