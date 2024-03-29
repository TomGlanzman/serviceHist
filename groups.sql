/* groups.sql */
--.trace stdout
.read cFormat.sql
select "All of the DESC-defined groups as of ",date(datetime(),'localtime');

.read tFormat.sql
.print Management entities
select GROUPID,GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupID < 100 order by GROUPSTART;

.print
.print Working Groups
select GROUPID,GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupID between 100 and 199 order by GroupStart;

.print
.print Topical Teams
select GROUPID,GROUPNAME,GROUPABBRV,HOSTGRPABBR,GROUPSTART,GROUPEND,NOTES from GroupSummary where GroupID between 200 and 299 order by GroupStart;

.print
.print Task Forces
select GROUPID,GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupID between 300 and 399 order by GroupStart;

--.trace off
