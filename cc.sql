/* cc.sql - print out CC membership by election cycle */
--.trace stdout
.read cFormat.sql
select "Complete history of DESC Collaboration Council as of ",date(datetime(),'localtime');
.read tFormat.sql

.print
.print First election cycle Sep 2014
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2015-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Second election cycle 2015
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2016-06-30' and RoleStart > '2015-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Third election cycle 2016 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2017-06-30' and RoleStart > '2016-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Fourth election cycle 2017 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2018-06-30' and RoleStart > '2017-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Fifth election cycle 2018 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2019-06-30' and RoleStart > '2018-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Sixth election cycle 2019 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2020-06-30' and RoleStart > '2019-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Seventh election cycle 2020 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2021-06-30' and RoleStart > '2020-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Eighth election cycle 2021 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2022-06-30' and RoleStart > '2021-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Ninth election cycle 2022 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2023-06-30' and RoleStart > '2022-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Tenth election cycle 2023 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2024-06-30' and RoleStart > '2023-07-01' order by RoleID,RoleStart,Role,LastName;

.print
.print Eleventh election cycle 2024 
select FirstName,LastName,GroupName,Role,RoleStart,RoleEnd,notes from HistSummary where GroupID=1 and RoleStart < '2025-06-30' and RoleStart > '2024-07-01' order by RoleID,RoleStart,Role,LastName;
