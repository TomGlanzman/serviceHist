/* mgmt-now.sql - Current DESC management team  */

.read cFormat.sql
select "Current DESC management team as of ",date(datetime(),'localtime');

.read tFormat.sql
select FirstName,LastName,Role,GroupName,RoleStart,Notes
       from HistSummary
       where ( RoleEnd = '' or RoleEnd > date() )
       and RoleStart <= date()
       and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;
