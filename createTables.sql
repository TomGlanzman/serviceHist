/* createTables.sql - Run this from within sqlite3 (i.e., ".read createTables.sql") 
   to create the set of database tables for the DESC service history project */

/* Ennumerated list of organizational "roles", e.g., Convener, Coordinator, Chair */
CREATE TABLE
    DESC_ORG_ROLES(
	ROLEID      INTEGER PRIMARY KEY,
	ROLENAME    TEXT NOT NULL,
	NOTES	    TEXT
	);

/* Ennumerated list of organizational "authorities", e.g., tech. coord., spokesperson,
   collaboration as a whole, collaboration council */
CREATE TABLE
    DESC_ORG_AUTHORITIES(
	AUTHID	    INTEGER PRIMARY KEY,
	AUTHNAME    TEXT NOT NULL,
	NOTES	    TEXT
	);


/* Ennumerated list of organizational "groups", e.g., Strong Lensing, Speakers Bureau */
CREATE TABLE 
    DESC_ORG_GROUPS(
       GROUPID      INTEGER PRIMARY KEY,
       GROUPNAME    TEXT NOT NULL,
       GROUPABBRV   TEXT,
       AUTHID       INTEGER,
       GROUPSTART   DATE,
       GROUPEND	    DATE,
       NOTES	    TEXT,
       FOREIGN KEY (AUTHID)
          REFERENCES DESC_ORG_AUTHORITIES (AUTHID)
	  ON UPDATE CASCADE
	  ON DELETE CASCADE
       );

/* DESC service history table */
CREATE TABLE
    DESC_SERVICE_HIST(
	MEMIDNUM    INTEGER,
	GROUPID	    INTEGER,
	ROLEID	    INTEGER,
	ROLESTART   DATE NOT NULL,
	ROLEEND	    DATE,
	NOTES	    TEXT,
	PRIMARY KEY (MEMIDNUM, GROUPID, ROLEID, ROLESTART),
	FOREIGN KEY (MEMIDNUM)
	   REFERENCES UM_MEMBER (MEMIDNUM)
	   ON UPDATE CASCADE
	   ON DELETE CASCADE,
	FOREIGN KEY (GROUPID)
	   REFERENCES DESC_ORG_GROUPS (GROUPID)
	   ON UPDATE CASCADE
	   ON DELETE CASCADE,
	FOREIGN KEY (ROLEID)
	   REFERENCES DESC_ORG_ROLES (ROLEID)
	   ON UPDATE CASCADE
	   ON DELETE CASCADE
	);
