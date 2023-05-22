/* cc-now.sql - current CC membership */
.read cFormat.sql
select "Current Collaboration Council as of ",date();
.read tFormat.sql

select FirstName,LastName,GroupName,Role,RoleStart,notes from HistSummary where GroupID=1 and RoleEnd = '' order by RoleID,RoleStart,Role,LastName;
