/* wg.sql - Working Group conveners */

.read cFormat.sql
select "Complete history of workingGroup conveners as of ",date(datetime(),'localtime');

.read tFormat.sql
.print Working Group Conveners (ordered by name)
select FirstName,LastName,GroupName,RoleStart,RoleEnd from HistSummary
       where RoleID in (9)
       and GroupID between 100 and 199
       order by LastName,RoleStart,GroupName;

.print ====================================================================================
.print
.print Working Group Conveners (ordered by group)
select FirstName,LastName,GroupName,RoleStart,RoleEnd from HistSummary
       where RoleID in (9)
       and GroupID between 100 and 199
       order by GroupName,RoleStart,LastName;
