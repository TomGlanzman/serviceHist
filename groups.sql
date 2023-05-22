/* groups.sql */
--.trace stdout
.read cFormat.sql
select "All of the DESC-defined groups as of ",date();

.read tFormat.sql
.print Management entities
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupID < 100 order by GroupID;

.print
.print Working Groups
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupID between 100 and 199 order by GroupID;

.print
.print Topical Teams
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupID between 200 and 299 order by GroupID;

.print
.print Task Forces
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupID between 300 and 399 order by GroupID;

--.trace off
