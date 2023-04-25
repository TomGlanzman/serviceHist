/* everyone.sql */
.trace stdout
.print Complete history of DESC service (sorted by person's name)
select FirstName,LastName,MEMIDNUM,Role,GroupName,RoleStart,RoleEnd from DevSummary order by LastName,RoleStart;

.print Total number of entries in table:
select count(*) from DevSummary;
.trace off
