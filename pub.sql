/* pub.sql */
.trace stdout
.print Complete history of Publication organization
.print

select * from DevSummary where GroupID=17 order by RoleStart,RoleID;
select * from DevSummary where GroupID=6 order by RoleStart,RoleID;



.trace off
