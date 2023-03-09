/* chairs.sql */
.trace stdout
.print Complete history of committee chairs

--select * from DevSummary where RoleID in (10,15) order by LastName,RoleStart;

select FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleID,RoleStart,RoleEnd from DevSummary where RoleID in (10,15) order by GroupID,RoleStart,LastName;

.trace off
