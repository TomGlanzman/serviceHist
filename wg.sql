/* wg.sql */
.trace stdout
.print Complete history of workingGroup/taskForce/topicalTeam conveners

--select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd,GroupEnd from DevSummary where RoleID in (9) order by LastName,RoleStart;

.print
.print Working Group Conveners (all groups) ordered by date
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd,GroupEnd from DevSummary where RoleID in (9) and GroupID > 99 and GroupID < 200 order by RoleStart,GroupName;

.print "\n"
.print Working Group Conveners (all groups) ordered by group
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd,GroupEnd from DevSummary where RoleID in (9) and GroupID > 99 and GroupID < 200 order by GroupName,RoleStart;


/*
.print "\n"
.print Working Group Conveners (active groups) ordered by group
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (9) and GroupID > 99 and GroupID < 200 and GroupEnd = '' order by GroupName,RoleStart;

.print "\n"
.print Working Group Conveners (inactive groups)
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (9) and GroupID > 99 and GroupID < 200 and GroupEnd != '' order by GroupName,RoleStart;
*/

.print "\n"
.print Topical Team Conveners
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd,GroupEnd from DevSummary where RoleID in (9) and GroupID > 199 and GroupID < 300 order by GroupName,RoleStart;

.print "\n"
.print Task Force Conveners
select FirstName,LastName,MEMIDNUM,GroupName,GroupID,RoleStart,RoleEnd,GroupEnd from DevSummary where RoleID in (9) and GroupID > 299 and GroupID < 400 order by GroupName,RoleStart;

.trace off
