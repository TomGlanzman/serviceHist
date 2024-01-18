/* tt.sql - Topical Team conveners */
.read cFormat.sql
select "Complete history of topical team conveners as of ",date(datetime(),'localtime');

.read tFormat.sql
.print Topical Team Conveners
select FirstName,LastName,GroupName,RoleStart,RoleEnd from HistSummary
       where RoleID in (9)
       and GroupID between 200 and 299
       order by GroupName,RoleStart,LastName;
