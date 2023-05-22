/* wg-now.sql - Current Working Group conveners */

.read cFormat.sql
select "Current workingGroup conveners as of ",date();

.read tFormat.sql
.print Working Group Conveners (ordered by group)
select FirstName,LastName,GroupName,RoleStart from HistSummary
       where RoleID in (9)
       and GroupID between 100 and 199
       and RoleEnd = ''
       order by GroupName,RoleStart,LastName;
       
