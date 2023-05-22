/* createViews.sql - create useful pseudo-tables, i.e., "views" for DESC serviceHist DB */

-- HistSummary is the primary way to view individual service roles within the DESC
DROP VIEW IF EXISTS HistSummary;
CREATE VIEW HistSummary(FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleID,RoleStart,RoleEnd,GroupStart,GroupEnd,AuthID,AuthGrp,notes)
       AS
       select M.FIRSTNAME,M.LASTNAME,M.MEMIDNUM,G.GROUPNAME,G.GROUPID,R.ROLENAME,R.ROLEID,H.ROLESTART,H.ROLEEND,G.GROUPSTART,G.GROUPEND,A.AUTHID,A.AUTHNAME,H.NOTES from DESC_SERVICE_HIST H
       	      join UM_MEMBER M on (M.MEMIDNUM=H.MEMIDNUM)
   	      join DESC_ORG_GROUPS G on (G.GROUPID=H.GROUPID)
   	      join DESC_ORG_ROLES R on (R.ROLEID=H.ROLEID)
   	      join DESC_ORG_AUTHORITIES A on (G.AUTHID=A.AUTHID);




-- GroupSummary is the primary way to view the defined groups within the DESC
DROP VIEW IF EXISTS GroupSummary;
CREATE VIEW GroupSummary(GroupName,GroupAbbrv,GroupID,GroupStart,GroupEnd,AuthID,AuthGrp,notes)
       AS
       select G.GROUPNAME,G.GROUPABBRV,G.GROUPID,G.GROUPSTART,G.GROUPEND,A.AUTHID,A.AUTHNAME,G.NOTES from DESC_ORG_GROUPS G
   	      join DESC_ORG_AUTHORITIES A on (G.AUTHID=A.AUTHID)
	      order by A.AUTHID,G.GROUPSTART;



