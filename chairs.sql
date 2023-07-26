/* chairs.sql */

.read cFormat.sql
select "Current and Past Chairs and Membership of Committees, Boards, & Bureaus as of ",date();

.read tFormat.sql
.print NOTE: some groups have not designated a chair/manager.
.print Complete history of committee chairs (sorted by name)
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd from HistSummary
       where RoleID in (5,6,10,15)
       and (GroupID between 2 and 19) or (GroupID between 50 and 100)
       order by LastName,RoleStart;

.print ================================================================================================
.print
.print Complete history of committee chairs (sorted by group)
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd from HistSummary
       where RoleID in (5,6,10,15)
       and (GroupID between 2 and 19) or (GroupID between 50 and 100)
       order by GroupID,RoleStart,LastName;

--
.print ================================================================================================
.print
.print Complete history of full committee membership (sorted by group)
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd from HistSummary
       where GroupID between 2 and 19
       or GroupID between 50 and 100
       order by GroupID,RoleStart,LastName;

