/* groups.sql */
--.trace stdout
.read cFormat.sql
select "All active DESC-defined groups as of ",date();

.read tFormat.sql
.print Management entities
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID < 100 order by GROUPSTART;

--.print
--.print Working Groups
--select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 100 and 199 order by GroupStart;

.print
.print Technical Working Groups
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 100 and 199 and AuthID = 3 order by GroupStart;

.print
.print Computing Working Groups
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 100 and 199 and AuthID = 4 order by GroupStart;

.print
.print Analysis Working Groups
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 100 and 199 and AuthID = 6 order by GroupStart;

.print
.print Topical Teams
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 200 and 299 order by GroupStart;

.print
.print Task Forces
select GROUPNAME,GROUPABBRV,GROUPSTART,GROUPEND,NOTES from desc_org_groups where GroupStart != '' and GroupEnd = '' and  GroupID between 300 and 399 order by GroupStart;

--.trace off
