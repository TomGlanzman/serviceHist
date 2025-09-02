/* mgmt.sql - DESC management team history */
--.trace stdout
.read cFormat.sql
select "Complete history of DESC management team as of ",date(datetime(),'localtime');

.read tFormat.sql
.print
.print First Administration (one year)
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleStart < '2013-07-01' and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;

.print
.print Second Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleStart > '2013-06-30' and RoleStart < '2015-07-01' and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;

.print
.print Third Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleStart > '2015-06-30' and RoleStart < '2017-07-01' and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;

.print
.print Fourth Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleStart > '2017-06-30' and RoleStart < '2019-07-01' and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;

.print
.print Fifth Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleStart > '2019-06-30' and RoleStart < '2021-07-01' and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;

.print
.print Sixth Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleStart > '2021-06-30' and RoleStart < '2023-07-01' and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;

.print
.print Seventh Administration
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleStart > '2023-06-30' and RoleStart < '2025-10-01' and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;


.print
.print Eighth Administration (Dates of office now extend from 1-Oct through 30-Sep two years hence)
select FirstName,LastName,Role,GroupName,RoleStart,RoleEnd,Notes from HistSummary
       where RoleStart > '2025-09-30' and RoleStart < '2027-10-01' and GroupID in (20,21,22,23,24,25,26)
       order by GroupID,RoleID ;


--.trace off
