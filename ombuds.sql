/* ombuds.sql - DESC Ombuds */
.read cFormat.sql
select "Complete history of DESC Ombuds as of ",date(datetime(),'localtime');

.read tFormat.sql
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd from HistSummary
       where GroupID in (30)
       order by RoleStart,LastName;

