/* smallTables.sql */

.print
.print Table of defined roles
select * from desc_org_roles order by roleID;

.print
.print Table of authorizing entities
select * from desc_org_authorities order by authID;
