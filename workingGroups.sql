/* groups.sql */
--.trace stdout
.read cFormat.sql
select "All active DESC-defined working groups as of ",date(datetime(),'localtime');

.read tFormat.sql
.print
.print Technical Working Groups
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,AUTHID,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 100 and 199 and AuthID = 3 order by GroupStart;

.print
.print Computing Working Groups
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,AUTHID,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 100 and 199 and AuthID = 4 order by GroupStart;

.print
.print Analysis Working Groups
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,AUTHID,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 100 and 199 and AuthID = 6 order by GroupStart;
--.trace off
