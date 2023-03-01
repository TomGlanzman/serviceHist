DROP VIEW IF EXISTS FullSummary;
CREATE VIEW FullSummary(FirstName,LastName,Role,GroupName,Abbrv,RoleStart,RoleEnd,AuthGrp,Notes)
       AS
       select M.FIRSTNAME,M.LASTNAME,R.ROLENAME,G.GROUPNAME,G.GROUPABBRV,H.ROLESTART,H.ROLEEND,A.AUTHNAME,H.NOTES from DESC_SERVICE_HIST H
       	      join UM_MEMBER M on (M.MEMIDNUM=H.MEMIDNUM)
   	      join DESC_ORG_GROUPS G on (G.GROUPID=H.GROUPID)
   	      join DESC_ORG_ROLES R on (R.ROLEID=H.ROLEID)
   	      join DESC_ORG_AUTHORITIES A on (G.AUTHID=A.AUTHID);


DROP VIEW IF EXISTS FullHistory;
CREATE VIEW FullHistory(MEMIDNUM,FirstName,LastName,Role,GroupName,RoleStart,RoleEnd)
       AS
       select M.MEMIDNUM,M.FIRSTNAME,M.LASTNAME,R.ROLENAME,G.GROUPNAME,H.ROLESTART,H.ROLEEND from DESC_SERVICE_HIST H
       	      join UM_MEMBER M on (M.MEMIDNUM=H.MEMIDNUM)
   	      join DESC_ORG_GROUPS G on (G.GROUPID=H.GROUPID)
   	      join DESC_ORG_ROLES R on (R.ROLEID=H.ROLEID)
   	      join DESC_ORG_AUTHORITIES A on (G.AUTHID=A.AUTHID)
	      order by H.ROLESTART,R.ROLENAME;



DROP VIEW IF EXISTS DevSummary;
CREATE VIEW DevSummary(FirstName,LastName,MEMIDNUM,GroupName,GroupID,Role,RoleID,RoleStart,RoleEnd,AuthID,AuthGrp)
       AS
       select M.FIRSTNAME,M.LASTNAME,M.MEMIDNUM,G.GROUPNAME,G.GROUPID,R.ROLENAME,R.ROLEID,H.ROLESTART,H.ROLEEND,A.AUTHID,A.AUTHNAME from DESC_SERVICE_HIST H
       	      join UM_MEMBER M on (M.MEMIDNUM=H.MEMIDNUM)
   	      join DESC_ORG_GROUPS G on (G.GROUPID=H.GROUPID)
   	      join DESC_ORG_ROLES R on (R.ROLEID=H.ROLEID)
   	      join DESC_ORG_AUTHORITIES A on (G.AUTHID=A.AUTHID);



DROP VIEW IF EXISTS CurrentSummary;
CREATE VIEW CurrentSummary(FirstName,LastName,Role,GroupName,Abbrv,RoleStart,AuthGrp,Notes)
       AS
       select M.FIRSTNAME,M.LASTNAME,R.ROLENAME,G.GROUPNAME,G.GROUPABBRV,H.ROLESTART,A.AUTHNAME,H.NOTES from DESC_SERVICE_HIST H
       	      join UM_MEMBER M on (M.MEMIDNUM=H.MEMIDNUM)
   	      join DESC_ORG_GROUPS G on (G.GROUPID=H.GROUPID)
   	      join DESC_ORG_ROLES R on (R.ROLEID=H.ROLEID)
   	      join DESC_ORG_AUTHORITIES A on (G.AUTHID=A.AUTHID)
	      where H.ROLEEND='';
