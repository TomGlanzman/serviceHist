/* ombuds.sql - Current DESC Ombuds */
.read cFormat.sql
select "Current DESC Ombuds as of ",date(datetime(),'localtime');

.read tFormat.sql
select FirstName,LastName,Role,GroupName,RoleStart from HistSummary
       where GroupID in (30)
       and ( RoleEnd = '' or RoleEnd > date() )
       and RoleStart <= date()
       order by RoleStart,LastName;

