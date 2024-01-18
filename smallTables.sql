/* smallTables.sql */

.read cFormat.sql
select "Small tables used by the DESC serviceHist database as of ",date(datetime(),'localtime');

.read tFormat.sql
.print Table of defined roles
select * from desc_org_roles order by roleID;

.print
.print Table of authorizing entities
select * from desc_org_authorities order by authID;
