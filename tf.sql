/* tf.sql - Task Force conveners */

.read cFormat.sql
select "Complete history of task force conveners as of ",date();

.read tFormat.sql
.print Task Force Conveners
select FirstName,LastName,GroupName,RoleStart,RoleEnd from HistSummary
       where RoleID in (9)
       and GroupID between 300 and 399
       order by GroupName,RoleStart,LastName;
