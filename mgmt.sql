/* mgmt.sql - print out DESC management team history */
.trace stdout
.print Complete history of DESC management team

.print
.print First Administration
select FirstName,LastName,MEMIDNUM,Role,RoleID,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (0,1,2,3,4) and RoleStart < '2013-07-01' order by RoleStart,RoleID,GroupName,LastName;
.trace off

.print
.print Second Administration
select FirstName,LastName,MEMIDNUM,Role,RoleID,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (0,1,2,3,4) and RoleStart > '2013-06-30' and RoleStart < '2015-07-01' order by RoleStart,RoleID,GroupName,LastName;

.print
.print Third Administration
select FirstName,LastName,MEMIDNUM,Role,RoleID,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (0,1,2,3,4) and RoleStart > '2015-06-30' and RoleStart < '2017-07-01' order by RoleStart,RoleID,GroupName,LastName;

.print
.print Fourth Administration
select FirstName,LastName,MEMIDNUM,Role,RoleID,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (0,1,2,3,4) and RoleStart > '2017-06-30' and RoleStart < '2019-07-01' order by RoleStart,RoleID,GroupName,LastName;

.print
.print Fifth Administration
select FirstName,LastName,MEMIDNUM,Role,RoleID,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (0,1,2,3,4) and RoleStart > '2019-06-30' and RoleStart < '2021-07-01' order by RoleStart,RoleID,GroupName,LastName;

.print
.print Sixth Administration
select FirstName,LastName,MEMIDNUM,Role,RoleID,GroupName,GroupID,RoleStart,RoleEnd from DevSummary where RoleID in (0,1,2,3,4) and RoleStart > '2021-06-30' and RoleStart < '2023-07-01' order by RoleStart,RoleID,GroupName,LastName;

.trace off
