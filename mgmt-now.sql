/* mgmt-now.sql - Current DESC management team  */

.read cFormat.sql
select "Current DESC management team as of ",date();

.read tFormat.sql
select FirstName,LastName,Role,GroupName,RoleStart,Notes from HistSummary
       where RoleEnd = '' and GroupID in (20,21,22,23,24,25,26)
       order by RoleID ;
