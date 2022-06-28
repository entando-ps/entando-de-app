

CREATE TABLE categories (
                            catcode varchar2(30) NOT NULL,
                            parentcode varchar2(30) NOT NULL,
                            titles clob NOT NULL
);

CREATE SEQUENCE contentattributeroles_id_seq
    START WITH 36
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE contentattributeroles (
                                       id number(10) NOT NULL,
                                       contentid varchar2(16) NOT NULL,
                                       attrname varchar2(30) NOT NULL,
                                       rolename varchar2(50) NOT NULL
);

CREATE OR REPLACE TRIGGER contentattributerolesTRG
    BEFORE INSERT ON contentattributeroles
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT contentattributeroles_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;

CREATE TABLE contentmodels (
                               modelid number(10) NOT NULL,
                               contenttype varchar2(30) NOT NULL,
                               descr varchar2(50) NOT NULL,
                               model clob,
                               stylesheet varchar2(50)
);

CREATE SEQUENCE contentrelations_id_seq
    START WITH 3832
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE contentrelations (
                                  id number(10) NOT NULL,
                                  contentid varchar2(16) NOT NULL,
                                  refpage varchar2(30),
                                  refcontent varchar2(16),
                                  refresource varchar2(16),
                                  refcategory varchar2(30),
                                  refgroup varchar2(20)
);

CREATE OR REPLACE TRIGGER contentrelationsTRG
    BEFORE INSERT ON contentrelations
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT contentrelations_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;

CREATE TABLE contents (
                          contentid varchar2(16) NOT NULL,
                          contenttype varchar2(30) NOT NULL,
                          descr varchar2(255) NOT NULL,
                          status varchar2(12) NOT NULL,
                          workxml clob NOT NULL,
                          created varchar2(20),
                          lastmodified varchar2(20),
                          onlinexml clob,
                          published varchar2(20),
                          sync number(5),
                          maingroup varchar2(20) NOT NULL,
                          currentversion varchar2(7) NOT NULL,
                          lasteditor varchar2(40),
                          firsteditor varchar2(40),
                          restriction varchar2(40)
);

CREATE SEQUENCE contentsearch_id_seq
    START WITH 2186
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE contentsearch (
                               id number(10) NOT NULL,
                               contentid varchar2(16) NOT NULL,
                               attrname varchar2(30) NOT NULL,
                               textvalue varchar2(255),
                               datevalue timestamp,
                               numvalue number(10),
                               langcode varchar2(3)
);

CREATE OR REPLACE TRIGGER contentsearchTRG
    BEFORE INSERT ON contentsearch
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT contentsearch_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;

CREATE TABLE guifragment (
                             code varchar2(50) NOT NULL,
                             widgettypecode varchar2(40),
                             plugincode varchar2(30),
                             gui clob,
                             defaultgui clob,
                             locked number(5) NOT NULL
);

CREATE TABLE jpseo_friendlycode (
                                    friendlycode varchar2(256) NOT NULL,
                                    pagecode varchar2(30),
                                    contentid varchar2(16),
                                    langcode varchar2(2)
);

CREATE TABLE jpversioning_trashedresources (
                                               resid varchar2(16) NOT NULL,
                                               restype varchar2(30) NOT NULL,
                                               descr varchar2(100) NOT NULL,
                                               maingroup varchar2(20) NOT NULL,
                                               resxml clob NOT NULL
);

CREATE TABLE jpversioning_versionedcontents (
                                                id number(10) NOT NULL,
                                                contentid varchar2(16) NOT NULL,
                                                contenttype varchar2(30) NOT NULL,
                                                descr varchar2(255) NOT NULL,
                                                status varchar2(12) NOT NULL,
                                                contentxml clob NOT NULL,
                                                versiondate timestamp NOT NULL,
                                                versioncode varchar2(7) NOT NULL,
                                                onlineversion number(10) NOT NULL,
                                                approved number(5) NOT NULL,
                                                username varchar2(40)
);

CREATE TABLE localstrings (
                              keycode varchar2(50) NOT NULL,
                              langcode varchar2(2) NOT NULL,
                              stringvalue clob NOT NULL
);

CREATE TABLE pagemodels (
                            code varchar2(40) NOT NULL,
                            descr varchar2(50) NOT NULL,
                            frames clob,
                            plugincode varchar2(30),
                            templategui clob
);

CREATE TABLE pages (
                       code varchar2(30) NOT NULL,
                       parentcode varchar2(30) NOT NULL,
                       pos number(10) NOT NULL
);

CREATE TABLE pages_metadata_draft (
                                      code varchar2(30) NOT NULL,
                                      groupcode varchar2(30) NOT NULL,
                                      titles clob NOT NULL,
                                      modelcode varchar2(40) NOT NULL,
                                      showinmenu number(5) NOT NULL,
                                      extraconfig clob,
                                      updatedat timestamp
);

CREATE TABLE pages_metadata_online (
                                       code varchar2(30) NOT NULL,
                                       groupcode varchar2(30) NOT NULL,
                                       titles clob NOT NULL,
                                       modelcode varchar2(40) NOT NULL,
                                       showinmenu number(5) NOT NULL,
                                       extraconfig clob,
                                       updatedat timestamp
);

CREATE SEQUENCE resourcerelations_id_seq
    START WITH 322
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE resourcerelations (
                                   id number(10) NOT NULL,
                                   resid varchar2(16) NOT NULL,
                                   refcategory varchar2(30) NOT NULL
);

CREATE OR REPLACE TRIGGER resourcerelationsTRG
    BEFORE INSERT ON resourcerelations
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT resourcerelations_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;


CREATE TABLE resources (
                           resid varchar2(16) NOT NULL,
                           restype varchar2(30) NOT NULL,
                           descr varchar2(255) NOT NULL,
                           maingroup varchar2(20) NOT NULL,
                           resourcexml clob NOT NULL,
                           masterfilename varchar2(100) NOT NULL,
                           creationdate timestamp,
                           lastmodified timestamp,
                           owner varchar2(128),
                           folderpath varchar2(256),
                           correlationcode varchar2(256)
);

CREATE TABLE sysconfig (
                           version varchar2(10) NOT NULL,
                           item varchar2(40) NOT NULL,
                           descr varchar2(100) NOT NULL,
                           config clob NOT NULL
);

CREATE TABLE uniquekeys (
                            id number(10) NOT NULL,
                            keyvalue number(10) NOT NULL
);

CREATE TABLE userpreferences (
                                 username varchar2(80) NOT NULL,
                                 wizard number(5) NOT NULL,
                                 loadonpageselect number(5) NOT NULL,
                                 translationwarning number(5) NOT NULL,
                                 defaultpageownergroup varchar2(64),
                                 defaultpagejoingroups varchar2(256),
                                 defaultcontentownergroup varchar2(64),
                                 defaultcontentjoingroups varchar2(256),
                                 defaultwidgetownergroup varchar2(64),
                                 defaultwidgetjoingroups varchar2(256)
);

CREATE TABLE widgetcatalog (
                               code varchar2(40) NOT NULL,
                               titles clob NOT NULL,
                               parameters clob,
                               plugincode varchar2(30),
                               parenttypecode varchar2(40),
                               defaultconfig clob,
                               locked number(5) NOT NULL,
                               maingroup varchar2(20),
                               configui clob,
                               bundleid varchar2(150),
                               readonlypagewidgetconfig number(5),
                               widgetcategory varchar2(80),
                               icon varchar2(80)
);

CREATE TABLE widgetconfig (
                              pagecode varchar2(30) NOT NULL,
                              framepos number(10) NOT NULL,
                              widgetcode varchar2(40) NOT NULL,
                              config clob
);

CREATE TABLE widgetconfig_draft (
                                    pagecode varchar2(30) NOT NULL,
                                    framepos number(10) NOT NULL,
                                    widgetcode varchar2(40) NOT NULL,
                                    config clob
);

CREATE SEQUENCE workcontentattrroles_id_seq
    START WITH 54
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE workcontentattributeroles (
                                           id number(10) NOT NULL,
                                           contentid varchar2(16) NOT NULL,
                                           attrname varchar2(30) NOT NULL,
                                           rolename varchar2(50) NOT NULL
);

CREATE OR REPLACE TRIGGER workcontentattributerolesTRG
    BEFORE INSERT ON workcontentattributeroles
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT workcontentattrroles_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;

CREATE SEQUENCE workcontentrelations_id_seq
    START WITH 959
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE workcontentrelations (
                                      id number(10) NOT NULL,
                                      contentid varchar2(16) NOT NULL,
                                      refcategory varchar2(30)
);

CREATE OR REPLACE TRIGGER workcontentrelationsTRG
    BEFORE INSERT ON workcontentrelations
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT workcontentrelations_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;

CREATE SEQUENCE workcontentsearch_id_seq
    START WITH 3864
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE workcontentsearch (
                                   id number(10) NOT NULL,
                                   contentid varchar2(16) NOT NULL,
                                   attrname varchar2(30) NOT NULL,
                                   textvalue varchar2(255),
                                   datevalue timestamp,
                                   numvalue number(10),
                                   langcode varchar2(3)
);

CREATE OR REPLACE TRIGGER workcontentsearchTRG
    BEFORE INSERT ON workcontentsearch
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT workcontentsearch_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;


ALTER TABLE categories ADD CONSTRAINT categories_pkey PRIMARY KEY (catcode);

ALTER TABLE contentattributeroles ADD CONSTRAINT contentattributeroles_pkey PRIMARY KEY (id);

ALTER TABLE contentmodels ADD CONSTRAINT contentmodels_pkey PRIMARY KEY (modelid);

ALTER TABLE contentrelations ADD CONSTRAINT contentrelations_pkey PRIMARY KEY (id);

ALTER TABLE contents ADD CONSTRAINT contents_pkey PRIMARY KEY (contentid);

ALTER TABLE contentsearch ADD CONSTRAINT contentsearch_pkey PRIMARY KEY (id);

ALTER TABLE guifragment ADD CONSTRAINT guifragment_pkey PRIMARY KEY (code);

ALTER TABLE jpseo_friendlycode ADD CONSTRAINT jpseo_friendlycode_pkey PRIMARY KEY (friendlycode);

ALTER TABLE jpversioning_versionedcontents ADD CONSTRAINT jpvers_contentvers_key UNIQUE (contentid, versioncode);

ALTER TABLE jpversioning_trashedresources ADD CONSTRAINT jpvers_trashedresources_pkey PRIMARY KEY (resid);

ALTER TABLE jpversioning_versionedcontents ADD CONSTRAINT jpvers_versionedcontents_pkey PRIMARY KEY (id);

ALTER TABLE localstrings ADD CONSTRAINT localstrings_pkey PRIMARY KEY (keycode, langcode);

ALTER TABLE pagemodels ADD CONSTRAINT pagemodels_pkey PRIMARY KEY (code);

ALTER TABLE pages_metadata_draft ADD CONSTRAINT pages_metadata_draft_pkey PRIMARY KEY (code);

ALTER TABLE pages_metadata_online ADD CONSTRAINT pages_metadata_online_pkey PRIMARY KEY (code);

ALTER TABLE pages ADD CONSTRAINT pages_pkey PRIMARY KEY (code);

ALTER TABLE resourcerelations ADD CONSTRAINT resourcerelations_pkey PRIMARY KEY (id);

ALTER TABLE resources ADD CONSTRAINT resources_pkey PRIMARY KEY (resid);

ALTER TABLE sysconfig ADD CONSTRAINT sysconfig_pkey PRIMARY KEY (version, item);

ALTER TABLE uniquekeys ADD CONSTRAINT uniquekeys_pkey PRIMARY KEY (id);

ALTER TABLE userpreferences ADD CONSTRAINT userpreferences_pkey PRIMARY KEY (username);

ALTER TABLE widgetcatalog ADD CONSTRAINT widgetcatalog_pkey PRIMARY KEY (code);

ALTER TABLE widgetconfig_draft ADD CONSTRAINT widgetconfig_draft_pkey PRIMARY KEY (pagecode, framepos);

ALTER TABLE widgetconfig ADD CONSTRAINT widgetconfig_pkey PRIMARY KEY (pagecode, framepos);

ALTER TABLE workcontentattributeroles ADD CONSTRAINT workcontentattributeroles_pkey PRIMARY KEY (id);

ALTER TABLE workcontentrelations ADD CONSTRAINT workcontentrelations_pkey PRIMARY KEY (id);

ALTER TABLE workcontentsearch ADD CONSTRAINT workcontentsearch_pkey PRIMARY KEY (id);

CREATE INDEX contentattrroles_attrname_idx ON contentattributeroles (attrname);

CREATE INDEX contentattrroles_contentid_idx ON contentattributeroles (contentid);

CREATE INDEX contentattrroles_rolename_idx ON contentattributeroles (rolename);

CREATE INDEX contentrelations_contentid_idx ON contentrelations (contentid);

CREATE INDEX contentrels_refcategory_idx ON contentrelations (refcategory);

CREATE INDEX contentrels_refgroup_idx ON contentrelations (refgroup);

CREATE INDEX contents_contenttype_idx ON contents (contenttype);

CREATE INDEX contents_lastmodified_idx ON contents (lastmodified);

CREATE INDEX contents_maingroup_idx ON contents (maingroup);

CREATE INDEX contents_published_idx ON contents (published);

CREATE INDEX contents_status_idx ON contents (status);

CREATE INDEX contentsearch_attrname_idx ON contentsearch (attrname);

CREATE INDEX contentsearch_contentid_idx ON contentsearch (contentid);

CREATE INDEX wrkcontattrroles_attrname_idx ON workcontentattributeroles (attrname);

CREATE INDEX wrkcontattrroles_contentid_idx ON workcontentattributeroles (contentid);

CREATE INDEX wrkcontattrroles_rolename_idx ON workcontentattributeroles (rolename);

CREATE INDEX wrkcontrelations_contentid_idx ON workcontentrelations (contentid);

CREATE INDEX wrkcontrelations_refcat_idx ON workcontentrelations (refcategory);

CREATE INDEX wrkcontsearch_attrname_idx ON workcontentsearch (attrname);

CREATE INDEX wrkcontsearch_contentid_idx ON workcontentsearch (contentid);

CREATE TABLE actionlogcommentrecords (
                                         id number(10) NOT NULL,
                                         recordid number(10) NOT NULL,
                                         username varchar2(20) NOT NULL,
                                         commenttext clob NOT NULL,
                                         commentdate timestamp NOT NULL
);

CREATE SEQUENCE actionloglikerecords_id_seq
    START WITH 2
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE actionloglikerecords (
                                      id number(10)  NOT NULL,
                                      recordid number(10) NOT NULL,
                                      username varchar2(20) NOT NULL,
                                      likedate timestamp NOT NULL
);

CREATE OR REPLACE TRIGGER actionloglikerecordsTRG
    BEFORE INSERT ON actionloglikerecords
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT actionloglikerecords_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;

CREATE SEQUENCE actionlogrecords_id_seq
    START WITH 2
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE actionlogrecords (
                                  id number(10) NOT NULL,
                                  username varchar2(40),
                                  actiondate timestamp,
                                  namespace clob,
                                  actionname varchar2(250),
                                  parameters clob,
                                  activitystreaminfo clob,
                                  updatedate timestamp
);

CREATE OR REPLACE TRIGGER actionlogrecordsTRG
    BEFORE INSERT ON actionlogrecords
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT actionlogrecords_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;

CREATE SEQUENCE actionlogrelations_id_seq
    START WITH 379
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE actionlogrelations (
                                    id number(10) NOT NULL,
                                    recordid number(10) NOT NULL,
                                    refgroup varchar2(20)
);

CREATE OR REPLACE TRIGGER actionlogrelationsTRG
    BEFORE INSERT ON actionlogrelations
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT actionlogrelations_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;


CREATE TABLE api_oauth_consumers (
                                     consumerkey varchar2(100) NOT NULL,
                                     consumersecret varchar2(100) NOT NULL,
                                     name varchar2(255),
                                     description clob NOT NULL,
                                     callbackurl clob,
                                     scope varchar2(255),
                                     authorizedgranttypes varchar2(255),
                                     expirationdate timestamp,
                                     issueddate timestamp
);

CREATE TABLE api_oauth_tokens (
                                  accesstoken varchar2(100) NOT NULL,
                                  clientid varchar2(100) NOT NULL,
                                  expiresin timestamp NOT NULL,
                                  refreshtoken varchar2(255) NOT NULL,
                                  granttype varchar2(100) NOT NULL,
                                  localuser varchar2(100)
);

CREATE TABLE apicatalog_methods (
                                    resourcecode varchar2(100) NOT NULL,
                                    httpmethod varchar2(6) NOT NULL,
                                    isactive number(5) NOT NULL,
                                    ishidden number(5) NOT NULL,
                                    authenticationrequired number(5),
                                    authorizationrequired varchar2(30)
);

CREATE TABLE apicatalog_services (
                                     servicekey varchar2(100) NOT NULL,
                                     resourcecode varchar2(100) NOT NULL,
                                     description clob NOT NULL,
                                     parameters clob,
                                     tag varchar2(100),
                                     freeparameters clob,
                                     isactive number(5) NOT NULL,
                                     ishidden number(5) NOT NULL,
                                     myentando number(5) NOT NULL,
                                     authenticationrequired number(5),
                                     requiredpermission varchar2(30),
                                     requiredgroup varchar2(20)
);

CREATE TABLE authgroups (
                            groupname varchar2(20) NOT NULL,
                            descr varchar2(50) NOT NULL
);

CREATE TABLE authpermissions (
                                 permissionname varchar2(30) NOT NULL,
                                 descr varchar2(50) NOT NULL
);

CREATE SEQUENCE authrolepermissions_id_seq
    START WITH 14
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE authrolepermissions (
                                     id number(10) NOT NULL,
                                     rolename varchar2(20) NOT NULL,
                                     permissionname varchar2(30) NOT NULL
);

CREATE OR REPLACE TRIGGER authrolepermissionsTRG
    BEFORE INSERT ON authrolepermissions
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT authrolepermissions_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;


CREATE TABLE authroles (
                           rolename varchar2(20) NOT NULL,
                           descr varchar2(50) NOT NULL
);

CREATE SEQUENCE authusergrouprole_id_seq
    START WITH 17
    INCREMENT BY 1
    NOCACHE;


CREATE TABLE authusergrouprole (
                                   id number(10) NOT NULL,
                                   username varchar2(80) NOT NULL,
                                   groupname varchar2(20),
                                   rolename varchar2(20)
);

CREATE OR REPLACE TRIGGER authusergrouproleTRG
    BEFORE INSERT ON authusergrouprole
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT authusergrouprole_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;


CREATE SEQUENCE authusrprfattrroles_id_seq
    START WITH 13
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE authuserprofileattrroles (
                                          id number(10) NOT NULL,
                                          username varchar2(80) NOT NULL,
                                          attrname varchar2(30) NOT NULL,
                                          rolename varchar2(50) NOT NULL
);

CREATE OR REPLACE TRIGGER authuserprofileattrrolesTRG
    BEFORE INSERT ON authuserprofileattrroles
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT authusrprfattrroles_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;


CREATE TABLE authuserprofiles (
                                  username varchar2(80) NOT NULL,
                                  profiletype varchar2(30) NOT NULL,
                                  profilexml clob NOT NULL,
                                  publicprofile number(5) NOT NULL
);

CREATE SEQUENCE authuserprofilesearch_id_seq
    START WITH 9
    INCREMENT BY 1
    NOCACHE;

CREATE TABLE authuserprofilesearch (
                                       id number(10) NOT NULL,
                                       username varchar2(80) NOT NULL,
                                       attrname varchar2(30) NOT NULL,
                                       textvalue varchar2(255),
                                       datevalue timestamp,
                                       numvalue number(10),
                                       langcode varchar2(3)
);

CREATE OR REPLACE TRIGGER authuserprofilesearchTRG
    BEFORE INSERT ON authuserprofilesearch
    FOR EACH ROW
    WHEN (new.id IS NULL)
BEGIN
SELECT authuserprofilesearch_id_seq.NEXTVAL
INTO   :new.id
FROM   dual;
END;


CREATE TABLE authusers (
                           username varchar2(80) NOT NULL,
                           passwd varchar2(512),
                           registrationdate timestamp NOT NULL,
                           lastaccess timestamp,
                           lastpasswordchange timestamp,
                           active number(5)
);

CREATE TABLE authusershortcuts (
                                   username varchar2(40) NOT NULL,
                                   config clob NOT NULL
);


ALTER TABLE actionlogcommentrecords ADD CONSTRAINT actionlogcommentrecords_pkey PRIMARY KEY (id);

ALTER TABLE actionloglikerecords ADD CONSTRAINT actionloglikerecords_pkey PRIMARY KEY (id);

ALTER TABLE actionlogrecords ADD CONSTRAINT actionlogrecords_pkey PRIMARY KEY (id);

ALTER TABLE actionlogrelations ADD CONSTRAINT actionlogrelations_pkey PRIMARY KEY (id);

ALTER TABLE api_oauth_consumers ADD CONSTRAINT api_oauth_consumers_pkey PRIMARY KEY (consumerkey);

ALTER TABLE api_oauth_tokens ADD CONSTRAINT api_oauth_tokens_pkey PRIMARY KEY (accesstoken);

ALTER TABLE apicatalog_methods ADD CONSTRAINT apicatalog_methods_pkey PRIMARY KEY (resourcecode, httpmethod);

ALTER TABLE apicatalog_services ADD CONSTRAINT apicatalog_services_pkey PRIMARY KEY (servicekey);

ALTER TABLE authgroups ADD CONSTRAINT authgroups_pkey PRIMARY KEY (groupname);

ALTER TABLE authpermissions ADD CONSTRAINT authpermissions_pkey PRIMARY KEY (permissionname);

ALTER TABLE authrolepermissions ADD CONSTRAINT authrolepermissions_pkey PRIMARY KEY (id);

ALTER TABLE authroles ADD CONSTRAINT authroles_pkey PRIMARY KEY (rolename);

ALTER TABLE authusergrouprole ADD CONSTRAINT authusergrouprole_pkey PRIMARY KEY (id);

ALTER TABLE authuserprofileattrroles ADD CONSTRAINT authuserprofileattrroles_pkey PRIMARY KEY (id);

ALTER TABLE authuserprofiles ADD CONSTRAINT authuserprofiles_pkey PRIMARY KEY (username);

ALTER TABLE authuserprofilesearch ADD CONSTRAINT authuserprofilesearch_pkey PRIMARY KEY (id);

ALTER TABLE authusers ADD CONSTRAINT authusers_pkey PRIMARY KEY (username);

ALTER TABLE authusershortcuts ADD CONSTRAINT authusershortcuts_pkey PRIMARY KEY (username);

CREATE INDEX actionlogrecs_actiondate_idx ON actionlogrecords (actiondate);

CREATE INDEX actionlogrecs_updatedate_idx ON actionlogrecords (updatedate);

CREATE INDEX actionlogrels_recordid_idx ON actionlogrelations (recordid);

CREATE INDEX actionlogrels_refgroup_idx ON actionlogrelations (refgroup);

CREATE INDEX authusrprfattrroles_aname_idx ON authuserprofileattrroles (attrname);

CREATE INDEX authusrprfattrroles_rname_idx ON authuserprofileattrroles (rolename);

CREATE INDEX authusrprfattrroles_uname_idx ON authuserprofileattrroles (username);

CREATE INDEX authuserprofiles_prftype_idx ON authuserprofiles (profiletype);

CREATE INDEX authuserprfsearch_attrname_idx ON authuserprofilesearch (attrname);

CREATE INDEX authuserprfsearch_username_idx ON authuserprofilesearch (username);
