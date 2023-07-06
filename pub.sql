/* pub.sql */
.trace stdout
.print Complete history of Publication organization
.print
.print Publication Committee (policy body)
select * from HistSummary where GroupID=17 order by RoleStart,RoleID;
.print
.print Publication Board (working body)
select * from HistSummary where GroupID=6 order by RoleStart,RoleID;
.print
.print *CURRENT* PubBoard
select * from HistSummary where GroupID=6 and RoleEnd = '' order by RoleStart,RoleID;



.trace off
