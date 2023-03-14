/* ombuds.sql - print out table of DESC Ombuds */
.trace stdout
.print Complete history of DESC Ombuds

select FirstName,LastName,MEMIDNUM,Role,RoleID,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where GroupID in (30) order by RoleStart,LastName;
.trace off
