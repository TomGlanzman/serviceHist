/* mgmt-now.sql - DESC management team  */
--.trace stdout
.headers off
.mode list
.separator ""
select "Current DESC management team as of ",date();
.headers on
.mode table

select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from ManagementTeam where RoleEnd = '' order by RoleID ;

.trace off
