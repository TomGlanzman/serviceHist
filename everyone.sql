/* everyone.sql */

.read cFormat.sql
select "Complete history of DESC service records (sorted by person's name) as of ",date(datetime(),'localtime');

.read tFormat.sql
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd from HistSummary order by LastName,RoleStart;

.print
.print Total number of entries in table:
select count(*) from HistSummary;

