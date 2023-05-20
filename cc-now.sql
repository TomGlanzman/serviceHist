/* cc-now.sql - current CC membership */
.headers off
.mode list
.separator ""
select "Current Collaboration Council as of ",date();
.headers on
.mode table
select FirstName,LastName,GroupName,Role,RoleStart from DevSummary where GroupID=1 and RoleEnd = '' order by RoleID,RoleStart,Role,LastName;
