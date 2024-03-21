/* fillTables.sql - insert data into (existing) tables in the DESC service history database */

/******* WARNING: DO NOT change/edit/modify/fold/spindle/mutilate the 
	 	  AUTHID,ROLEID, or GROUPID values of any existing entry in these tables!  
		  If you do, untold carnage will result. 

		  To add a new row, do so and assign a new ID number.

		  To remove an old row, it is best to simply abandon in place.
*******/

/* Next section imports all DESC names (from the OracleDB) into this UM_MEMBERS table */


DROP TABLE IF EXISTS UM_MEMBER;

CREATE TABLE
    UM_MEMBER(
        MEMIDNUM   INTEGER PRIMARY KEY, 
        FIRSTNAME  VARCHAR2(50) NOT NULL, 
        LASTNAME   VARCHAR2(50) NOT NULL 
    );

--.mode csv  changed to "tabs" 3/21/2024 to accommodate new file format
.mode tabs
.import ./AllNames.txt UM_MEMBER
.mode table
.headers on


/*


/* Authorities are persons or organizations that authorize, organize, and/or manage DESC 'groups' */
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (1,'DESC Collaboration Full Members');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (2,'DESC Spokesperson');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (3,'Technical Coordinator');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (4,'Computing and Simulation Coordinator');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (5,'Data Coordinator');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (6,'Analysis Coordinator');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (7,'DESC Operations Manager');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (8,'DESC Collaboration Council');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (10,'External Organization');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (11,'Executive Board');
INSERT INTO DESC_ORG_AUTHORITIES (AUTHID,AUTHNAME) VALUES (12,'DESC Membership');


/* Generic role titles used within DESC */
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (0,'co-Spokesperson');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (1,'Spokesperson');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (2,'Deputy Spokesperson');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (3,'Coordinator');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (4,'Deputy Coordinator');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (5,'Manager');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (6,'Deputy Manager');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (7,'Member');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (8,'Full Member');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (9,'Convener/co-Convener');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (10,'Chair/co-Chair');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (11,'Ombudsperson');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (12,'Staff');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (13,'External Liaison');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (14,'Internal Liaison');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (15,'Deputy Chair');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (16,'Observer');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (17,'Ex Officio Member');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (18,'Theory Advisor');
INSERT INTO DESC_ORG_ROLES (ROLEID,ROLENAME) VALUES (19,'Contact person');

/* ***** DESC Groups ***** */

/* group numbers 1-99: general DESC groups */
/* COMMITTEES (1-19 and 50-75) */
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (1,'Collaboration Council','CC',1,'2014-10-13','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (2,'Executive Board','',8,'2012-06-15','2015-06-30','Recast as Advisory Board'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (3,'Advisory Board','',8,'2015-07-01','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (4,'Operations Committee','OC',2,'2015-01-01','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (5,'Speakers Bureau','SB',8,'2021-10-03','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (6,'Publication Board','PUB',8,'2016-09-01','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (7,'Membership Committee','MC',8,'2014-12-19','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (8,'Meetings Committee','',2,'2015-08-31','',''); -- 2/2022 claims this is a SP committee
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (9,'International Resources Committee','IRC',8,'2012-06-15','','non-DESC people; not tracked'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (10,'Equity Diversity and Inclusion Committee','EDI',8,'2020-07-01','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (11,'Senior but Unseasoned DESC Organization','SUDO',12,'2023-08-15','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (12,'Spokesperson Nominating Committee','SNC',8,'','','created every two years'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (13,'Junior DESC Organization','JuDO',8,'2015-01-03','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (14,'ad-hoc Meetings Accessibility Committee','MAC',2,'2020-03-01','2021-05-01','one year charter'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (15,'Collaboration Council Nominating Committee','CCNC',8,'','','created every year'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (16,'Scientific/Local Organizing Committee','SOC/LOC',8,'','','created every collab mtg/sprint wk'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (17,'Publications Committee','',8,'2016-03-01','2016-09-30',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (18,'Governance Committee','',11,'2012-06-15','2013-06-30','(voting members of Executive Board)');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (19,'Membership Review Policy Committee','MRPC',8,'2019-04-22','','');
---------------------------------------------------------------------------------------------------
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (50,'Speakers Bureau Policy Committee','SBPC',8,'2019-07-01','2021-07-31','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (51,'Software Review Policy Committee','SRPC',8,'2019-04-22','2021-07-31','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (52,'Data Facility Committee','',2,'2021-07-01','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (53,'Mentoring Committee','',2,'2022-08-01','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (54,'Spokesperson Sustainability Committee','',8,'2023-12-21','','ad hoc committee');





/* Executive Branch (Spokesperson) & "Management Team" and its committees 20-29 */
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (20,'Office of the Spokesperson','',1,'2012-06-15','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (21,'Office of the Deputy Spokesperson','',2,'2012-06-15','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (22,'Technical Working Groups','',2,'2012-06-15','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (23,'Computing/Simulation Working Groups','',2,'2012-06-15','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (24,'Analysis Working Groups','',2,'2012-06-15','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (25,'Operations Group','OPS',2,'2016-02-26','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (26,'Data Working Groups','',2,'2019-07-01','2021-06-30','');




/* Judicial Branch (Ombudsman) */
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (30,'Office of the Ombuds','',8,'2016-03-01','','Appointed by the CC'); 


/* External Liaisons */
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (40,'Liaison: Rubin Observatory project and facility','',8,'','','history not tracked'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (41,'Liaison: High Performance Computing resources','',8,'','','history not tracked'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (42,'Liaison: Other Science Projects','',8,'','','history not tracked'); 



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/* The Working Groups 100-199 */
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (101,'Blending Working Group','BL',3,'2019-09-03','2024-01-04','Formed from BTF'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (102,'Photometric Corrections/Calibrations Working Group','PC',3,'2015-12-02','2024-01-04',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (103,'Point Spread Function Working Group','PSF',3,'2019-10-02','2024-01-04','Formed from PSF TF'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (104,'Sensor Anomalies Working Group','SA',3,'2015-02-01','','To be paused ~Spring 2024 thru commissioning'); 

INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (105,'Computing Working Group','CO',4,'2019-09-01','','Formed from CI and CSS WGs');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (106,'Cosmological and Survey Sims Working Group','CSS',4,'2021-01-03','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (107,'Science Release and Validation Working Group','SRV',4,'2021-07-01','','');

INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (108,'Dark Matter Working Group','DM',6,'2019-09-03','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (109,'External Synergies Working Group','ES',6,'2019-10-01','2024-01-04',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (110,'Photometric Redshifts Working Group','PZ',6,'2012-06-15','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (111,'Theory & Joint Probes Working Group','TJP',6,'2012-06-15','2021-07-01','Evolved to MCP WG'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (112,'Galaxy Clusters Working Group','CL',6,'2012-06-15','',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (113,'Large Scale Structure Working Group','LSS',6,'2012-06-15','2024-01-04',''); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (114,'Strong Lensing Working Group','SL',6,'2012-06-15','2021-07-01','Merged into TD WG as a Topical Team'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (115,'Supernovae Working Group','SN',6,'2012-06-15','2021-07-01','Merged into TD WG as a Topical Team');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (116,'Time Domain Working Group','TD',6,'2021-07-01','','Created from merge of SL and SN WGs'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (117,'Weak Lensing Working Group','WL',6,'2012-06-15','2023-12-31','');
/* Until 2021-07-01, the Observing Strategy group was under the Tech Coordinator, after that under the Analysis Coordinator */
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (118,'Observing Strategy Working Group','OS',3,'2019-09-12','2021-01-07','Formed from OS TF');

INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (119,'Cosmological Simulations Working Group','CS',4,'2012-06-15','2021-01-03','merged into CSS');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (120,'Survey Simulations Working Group','SS',4,'2015-07-01','2021-01-03','merged into CSS');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (122,'Computing Infrastructure Working Group','CI',4,'2012-06-15','2019-09-01','Converted into CO WG');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (123,'Software Working Group','',4,'2012-06-15','2015-06-30','Merged into CI WG');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (124,'Photon Simulator Working Group','',4,'2012-06-15','2015-06-30','Converted to Survey Sim WG');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (125,'Analysis-Computing Liaison Working Group','',4,'2012-06-15','2015-06-30','');

INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (126,'System Throughput Working Group','',3,'2012-06-15','2015-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (127,'Image Processing Pipelines Working Group','',3,'2012-06-15','2015-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (128,'Image Quality Working Group','',3,'2012-06-15','2015-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (129,'Science Ops and Calibration Working Group','',3,'2012-06-15','2015-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (130,'Image Processing Algorithms Working Group','',3,'2013-02-03','2015-06-30','Renamed Image Processing Pipelines?');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (131,'Commissioning Working Group','COM',6,'2019-09-09','2024-01-04','Formed from COM TF');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (132,'Modeling and Combined Probes Working Group','MCP',6,'2021-07-01','','Renamed from TJP WG'); 

INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (133,'Pixels to Objects Working Group','PO',3,'2024-01-04','','Formed from BL WG + SSI TT + PC/PSF/WL WGs'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (134,'Pixels to Light Curves Working Group','PLC',3,'2024-01-04','','Formed from DIA TT + PC WG + SSI TT'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (135,'Survey Coordination Working Group','SC',6,'2024-01-04','','Formed from OS and ES WGs'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (136,'Weak Lensing/LSS Working Group','WLSS',6,'2024-01-04','','Formed from WL and LSS WGs'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (137,'Observing Strategy Working Group','OS',6,'2021-07-01','2024-01-04','Moved to Analysis Coord');

--INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (138,' Working Group','',,'','',''); 


/* The Topical Teams 200-299 */
/* Topical Teams are unique in that they all have a (single) "host group" or sponsoring group */
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (201,'Alerts Topical Team','',2,116,'2020-03-30','2021-09-21','Mission complete.');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (202,'Bayesian Pipelines Topical Team','',2,136,'2022-01-14','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (203,'Beyond wCDM Topical Team','',2,132,'2019-09-17','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (204,'Blending Toolkit Topical Team','',2,133,'2021-10-08','','within BWG');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (205,'Blind Analysis Topical Team','',2,132,'2022-06-06','','within MCP');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (206,'Cluster Weak Lensing Mass Modeling Topical Team','CLMM',2,112,'2021-07-08','','within CL');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (207,'Core Cosmology Library Topical Team','CLL',2,132,'2019-09-09','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (208,'Difference Imaging Analysis Topical Team','DIA',2,134,'2019-11-20','2024-01-05','within SNWG');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (209,'Higher Order Statistics Topical Team','HOS',2,136,'2021-11-22','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (210,'imSim Topical Team','',2,106,'2021-11-01','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (211,'Intrinsic Alignments Topical Team','',2,132,'2021-05-04','','within MCP & WL');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (212,'Redshift Assessment Infrastructure Layers Topical Team','RAIL',2,110,'2021-08-20','','within PZ');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (213,'Strong Lensing Topical Team','SL',2,116,'2021-07-01','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (214,'Machine Learning for Transient Science Topical Team','MALTS',2,116,'2021-03-22','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (215,'TJPCov Topical Team','',2,132,'2019-09-10','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (216,'Data Access Topical Team','',2,105,'2019-11-05','2021-12-31','Subsumed by CO WG');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (217,'Weak Lensing Shear Topical Team','',2,133,'2022-09-19','','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (218,'DESC-DESI Coordination Topical Team','',2,135,'2023-10-20','','within ES');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,HOSTGRPID,GROUPSTART,GROUPEND,NOTES) VALUES (219,'Forecasting Topical Team','',2,132,'2024-02-29','','within MCP');


/* The Task Forces 300-399 */
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (301,'Commissioning Task Force','COM',3,'2017-07-01','2019-09-09','Converted to COM WG'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (302,'Followup Task Force','FTF',3,'2018-10-16','2019-09-01','Converted to ES WG'); 
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (303,'Observing Strategy Task Force','OS',6,'2017-11-08','2019-09-12','Converted to OS WG');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (304,'Blending Task Force','BTF',6,'2017-09-01','2019-09-03','Converted to BL WG');

INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (305,'DM-DC2 Task Force','',6,'2018-02-01','2019-09-01','Merged into CO WG');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (306,'Data Access Task Force','',6,'2018-06-01','2019-09-01','Converted to TT (CO WG)');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (307,'PSF Task Force','',6,'2019-02-22','2019-09-03','Converted to PSF WG');--recreated 2019-02-22???
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (308,'Reprocessing Task Force','',6,'2013-00-00','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (309,'Impact of Atmospheric Absorption on Photo-Z Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (310,'Mitigation of Intrinsic Alignments Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (311,'Non-Gaussian WL statistics Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (312,'Probabilistic PSF Marginalization Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (313,'Photo-z Realistic SEDs Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (314,'Galactic Reddening','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (315,'Galaxy Simulation Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (316,'Statistical Methods Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (317,'Survey Strategy Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (318,'Twinkles Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (319,'3D Data Compression Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (320,'Self-calib Methods to Mitigate IA Task Force','',6,'2015-07-01','2017-06-30','');
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (321,'TJP Code Comparison Task Force','',6,'2015-07-01','2017-06-30','');

INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (322,'Commissioning Task Force','COM',3,'2024-01-04','','Reverted from WG to TF'); 

INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (323,'Static Lens Finding Task Force','',6,'2024-02-06','','');

/*
INSERT INTO DESC_ORG_GROUPS (GROUPID,GROUPNAME,GROUPABBRV,AUTHID,GROUPSTART,GROUPEND,NOTES) VALUES (3xx,' Task Force','',6,'2015-07-01','','');
*/


