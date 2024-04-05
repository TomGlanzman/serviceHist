/* tt-now.sql - Topical Team conveners */
.read cFormat.sql
select "Current topical team conveners as of ",date(datetime(),'localtime');

.read tFormat.sql
.print Topical Team Conveners
select FirstName,LastName,GroupName,RoleStart from HistSummary
       where RoleID in (9)
       and GroupID between 200 and 299
       and ( RoleEnd = '' or RoleEnd > date() )
       and RoleStart <= date()
       order by GroupName,RoleStart,LastName;
