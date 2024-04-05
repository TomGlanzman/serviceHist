/* cc-now.sql - current CC membership */
.read cFormat.sql
select "Current Collaboration Council as of ",date(datetime(),'localtime');
.read tFormat.sql

select FirstName,LastName,GroupName,Role,RoleStart,notes
       from HistSummary
       where GroupID=1
       and ( RoleEnd = '' or RoleEnd > date() )
       and RoleStart <= date()
       order by RoleID,RoleStart,Role,LastName;
