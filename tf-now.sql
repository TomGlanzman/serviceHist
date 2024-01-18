/* tf-now.sql - Task Force conveners */

.read cFormat.sql
select "Current task force conveners as of ",date(datetime(),'localtime');

.read tFormat.sql
.print Task Force Conveners
select FirstName,LastName,GroupName,RoleStart,RoleEnd from HistSummary
       where RoleID in (9)
       and GroupID between 300 and 399
       and RoleEnd = ''
       order by GroupName,RoleStart,LastName;
