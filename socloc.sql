/* socloc.sql - members of Meeting SOC/LOC committees */
.trace stdout
.print Complete history of DESC Meeting SOC/LOC membership
.print

select FirstName,LastName,MEMIDNUM,GroupName,Role,RoleID,RoleStart,RoleEnd,notes from HistSummary where GroupID in (16) order by RoleStart,LastName,Role;

.print
.print Currently active SOC/LOC members

select FirstName,LastName,MEMIDNUM,GroupName,Role,RoleID,RoleStart,RoleEnd,notes from HistSummary where GroupID in (16) and RoleEnd='' order by notes,Role,LastName;



.trace off
