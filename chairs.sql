/* chairs.sql */
.trace stdout
.print Complete history of committee chairs (sorted by Committee)
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleID,RoleStart,RoleEnd from DevSummary where RoleID in (10,15) order by GroupID,RoleStart,LastName;

.print Complete history of committee chairs (sorted by person's name)
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleID,RoleStart,RoleEnd from DevSummary where RoleID in (10,15) order by LastName,RoleStart;



.trace off
