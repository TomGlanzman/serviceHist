/* pub.sql */
.trace stdout
.print Complete history of Publication organization
.print
.print Publication Committee (policy body)
select * from DevSummary where GroupID=17 order by RoleStart,RoleID;
.print
.print Publication Board (working body)
select * from DevSummary where GroupID=6 order by RoleStart,RoleID;



.trace off
