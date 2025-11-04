/* chairs-now.sql */

.read cFormat.sql
select "Current active committee/board/bureau chairs/managers as of ",date(datetime(),'localtime');

.read tFormat.sql
.print NOTE: some groups may have not designated a chair/manager.
.print Current chairs/managers
select FirstName,LastName,Role,GroupName,RoleStart,notes from HistSummary
       where RoleID in (5,6,10,15)
       and GroupID != 1 and GroupID != 25
       and ( RoleEnd = '' or RoleEnd > date() )
       and RoleStart <= date()
       order by GroupName,notes,LastName;

--
.print ================================================================================================
.print
.print Current committee membership
select FirstName,LastName,Role,GroupName,RoleStart,notes from HistSummary
       where (GroupID between 2 and 19 or GroupID between 50 and 100)
       and ( RoleEnd = '' or RoleEnd > date() )
       and RoleStart <= date()
       order by GroupID,notes,LastName;

