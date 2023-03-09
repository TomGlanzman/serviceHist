/* groups.sql */
.trace stdout
.print Dump contents of the smallish auxiliary tables: groupNames, roles, authIDs

.print
.print Management entities
select * from desc_org_groups where GroupID < 100 order by GroupID;

.print
.print Working Groups
select * from desc_org_groups where GroupID > 99 and GroupID < 200 order by GroupID;

.print
.print Topical Teams
select * from desc_org_groups where GroupID > 199 and GroupID < 300 order by GroupID;

.print
.print Task Forces
select * from desc_org_groups where GroupID > 299 and GroupID < 400 order by GroupID;

.trace off
