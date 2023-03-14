/* coords.sql - print out history of each management coordinator role */
.trace stdout
.print Complete history of DESC Coordinator role
.print
.print Technical Coordinator
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleStart,RoleEnd from DevSummary where GroupID=22 order by RoleStart,RoleID;
.print
.print Computing Coordinator
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleStart,RoleEnd from DevSummary where GroupID=23 order by RoleStart,RoleID;
.print
.print Analysis Coordinator
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleStart,RoleEnd from DevSummary where GroupID=24 order by RoleStart,RoleID;
.print
.print Data Coordinator
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleStart,RoleEnd from DevSummary where GroupID=26 order by RoleStart,RoleID;
.print


.trace off
