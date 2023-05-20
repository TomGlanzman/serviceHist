/* mgmt.sql - DESC management team history */
--.trace stdout
.print Complete history of DESC management team

.print
.print First Administration (one year)
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from ManagementTeam where RoleStart < '2013-07-01' order by RoleID ;

.print
.print Second Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from ManagementTeam where RoleStart > '2013-06-30' and RoleStart < '2015-07-01' order by RoleID ;

.print
.print Third Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from ManagementTeam where RoleStart > '2015-06-30' and RoleStart < '2017-07-01' order by RoleID ;

.print
.print Fourth Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from ManagementTeam where RoleStart > '2017-06-30' and RoleStart < '2019-07-01' order by RoleID ;

.print
.print Fifth Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from ManagementTeam where RoleStart > '2019-06-30' and RoleStart < '2021-07-01' order by RoleID ;

.print
.print Sixth Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from ManagementTeam where RoleStart > '2021-06-30' and RoleStart < '2023-07-01' order by RoleID ;

.print
.print Seventh Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from ManagementTeam where RoleStart > '2023-06-30' and RoleStart < '2025-07-01' order by RoleID ;

.trace off
