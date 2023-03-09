/* wg.sql */
.trace stdout
.print Complete history of workingGroup/taskForce/topicalTeam conveners

--select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (9) order by LastName,RoleStart;

.print
.print Working Group Conveners
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (9) and GroupID > 99 and GroupID < 200 order by GroupID,RoleStart;

.print
.print Topical Team Conveners
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (9) and GroupID > 199 and GroupID < 300 order by GroupID,RoleStart;

.print
.print Task Force Conveners
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (9) and GroupID > 299 and GroupID < 400 order by GroupID,RoleStart;

.trace off
