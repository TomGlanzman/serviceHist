/* wg.sql */
.trace stdout
.print Complete history of workingGroup/taskForce/topicalTeam conveners
.print

select * from DevSummary where RoleID in (9) order by LastName,RoleStart;

select * from DevSummary where RoleID in (9) order by GroupID,RoleStart;

.trace off
