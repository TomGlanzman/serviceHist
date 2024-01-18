/* chairs.sql */

.read cFormat.sql
select "Current and Past Chairs and Membership of Committees, Boards, & Bureaus as of ",date(datetime(),'localtime');

.read tFormat.sql
.print NOTE: some groups have not designated a chair/manager.
.print Complete history of committee chairs (sorted by name)
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleID in (5,6,10,15)
       and ((GroupID between 2 and 19) or (GroupID between 50 and 100))
       order by LastName,RoleStart;

.print ================================================================================================
.print
.print Complete history of committee chairs (sorted by group and time)
select GroupName,FirstName,LastName,Role,RoleStart,RoleEnd,Notes from HistSummary
       where RoleID in (5,6,10,15)
       and ((GroupID between 2 and 19) or (GroupID between 50 and 100))
       order by GroupName,RoleStart,LastName;

--
.print ================================================================================================
.print
.print Complete history of full committee membership (sorted by group and time)
select GroupName,FirstName,LastName,Role,RoleStart,RoleEnd,Notes from HistSummary
       where (GroupID between 2 and 19)
       or (GroupID between 50 and 100)
       order by GroupName,RoleStart,LastName;

