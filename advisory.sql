/* advisory.sql - print out Executive/Advisory Board membership history */
.trace stdout
.print Complete history of DESC Executive & Advisory Boards
.print

select FirstName,LastName,MEMIDNUM,GroupName,Role,RoleID,RoleStart,RoleEnd from DevSummary where GroupID in (2,3) order by RoleStart,Role,LastName;

.trace off
