-- categories definition

-- Drop table

-- DROP TABLE categories;

CREATE TABLE categories (
                                      catcode varchar(30) NOT NULL,
                                      parentcode varchar(30) NOT NULL,
                                      titles text NOT NULL,
                                      CONSTRAINT categories_pkey PRIMARY KEY (catcode)
);


-- contentmodels definition

-- Drop table

-- DROP TABLE contentmodels;

CREATE TABLE contentmodels (
                                         modelid int4 NOT NULL,
                                         contenttype varchar(30) NOT NULL,
                                         descr varchar(50) NOT NULL,
                                         model text NULL,
                                         stylesheet varchar(50) NULL,
                                         CONSTRAINT contentmodels_pkey PRIMARY KEY (modelid)
);


-- contents definition

-- Drop table

-- DROP TABLE contents;

CREATE TABLE contents (
                                    contentid varchar(16) NOT NULL,
                                    contenttype varchar(30) NOT NULL,
                                    descr varchar(255) NOT NULL,
                                    status varchar(12) NOT NULL,
                                    workxml text NOT NULL,
                                    created varchar(20) NULL,
                                    lastmodified varchar(20) NULL,
                                    onlinexml text NULL,
                                    published varchar(20) NULL,
                                    sync int2 NULL,
                                    maingroup varchar(20) NOT NULL,
                                    currentversion varchar(7) NOT NULL,
                                    lasteditor varchar(40) NULL,
                                    firsteditor varchar(40) NULL,
                                    restriction varchar(40) NULL,
                                    CONSTRAINT contents_pkey PRIMARY KEY (contentid)
);
CREATE INDEX contents_contenttype_idx ON contents USING btree (contenttype);
CREATE INDEX contents_lastmodified_idx ON contents USING btree (lastmodified);
CREATE INDEX contents_maingroup_idx ON contents USING btree (maingroup);
CREATE INDEX contents_published_idx ON contents USING btree (published);
CREATE INDEX contents_status_idx ON contents USING btree (status);


-- jpseo_friendlycode definition

-- Drop table

-- DROP TABLE jpseo_friendlycode;

CREATE TABLE jpseo_friendlycode (
                                              friendlycode varchar(256) NOT NULL,
                                              pagecode varchar(30) NULL,
                                              contentid varchar(16) NULL,
                                              langcode varchar(2) NULL,
                                              CONSTRAINT jpseo_friendlycode_pkey PRIMARY KEY (friendlycode)
);


-- jpversioning_trashedresources definition

-- Drop table

-- DROP TABLE jpversioning_trashedresources;

CREATE TABLE jpversioning_trashedresources (
                                                         resid varchar(16) NOT NULL,
                                                         restype varchar(30) NOT NULL,
                                                         descr varchar(100) NOT NULL,
                                                         maingroup varchar(20) NOT NULL,
                                                         resxml text NOT NULL,
                                                         CONSTRAINT jpversioning_trashedresources_pkey PRIMARY KEY (resid)
);


-- jpversioning_versionedcontents definition

-- Drop table

-- DROP TABLE jpversioning_versionedcontents;

CREATE TABLE jpversioning_versionedcontents (
                                                          id int4 NOT NULL,
                                                          contentid varchar(16) NOT NULL,
                                                          contenttype varchar(30) NOT NULL,
                                                          descr varchar(255) NOT NULL,
                                                          status varchar(12) NOT NULL,
                                                          contentxml text NOT NULL,
                                                          versiondate timestamp NOT NULL,
                                                          versioncode varchar(7) NOT NULL,
                                                          onlineversion int4 NOT NULL,
                                                          approved int2 NOT NULL,
                                                          username varchar(40) NULL,
                                                          CONSTRAINT jpvers_contentvers_key UNIQUE (contentid, versioncode),
                                                          CONSTRAINT jpversioning_versionedcontents_pkey PRIMARY KEY (id)
);


-- localstrings definition

-- Drop table

-- DROP TABLE localstrings;

CREATE TABLE localstrings (
                                        keycode varchar(50) NOT NULL,
                                        langcode varchar(2) NOT NULL,
                                        stringvalue text NOT NULL,
                                        CONSTRAINT localstrings_pkey PRIMARY KEY (keycode, langcode)
);


-- pagemodels definition

-- Drop table

-- DROP TABLE pagemodels;

CREATE TABLE pagemodels (
                                      code varchar(40) NOT NULL,
                                      descr varchar(50) NOT NULL,
                                      frames text NULL,
                                      plugincode varchar(30) NULL,
                                      templategui text NULL,
                                      CONSTRAINT pagemodels_pkey PRIMARY KEY (code)
);


-- pages definition

-- Drop table

-- DROP TABLE pages;

CREATE TABLE pages (
                                 code varchar(30) NOT NULL,
                                 parentcode varchar(30) NOT NULL,
                                 pos int4 NOT NULL,
                                 CONSTRAINT pages_pkey PRIMARY KEY (code)
);


-- resources definition

-- Drop table

-- DROP TABLE resources;

CREATE TABLE resources (
                                     resid varchar(16) NOT NULL,
                                     restype varchar(30) NOT NULL,
                                     descr varchar(255) NOT NULL,
                                     maingroup varchar(20) NOT NULL,
                                     resourcexml text NOT NULL,
                                     masterfilename varchar(100) NOT NULL,
                                     creationdate timestamp NULL,
                                     lastmodified timestamp NULL,
                                     "owner" varchar(128) NULL,
                                     folderpath varchar(256) NULL,
                                     correlationcode varchar(256) NULL,
                                     CONSTRAINT resources_pkey PRIMARY KEY (resid)
);


-- sysconfig definition

-- Drop table

-- DROP TABLE sysconfig;

CREATE TABLE sysconfig (
                                     "version" varchar(10) NOT NULL,
                                     item varchar(40) NOT NULL,
                                     descr varchar(100) NOT NULL,
                                     config text NOT NULL,
                                     CONSTRAINT sysconfig_pkey PRIMARY KEY (version, item)
);


-- uniquekeys definition

-- Drop table

-- DROP TABLE uniquekeys;

CREATE TABLE uniquekeys (
                                      id int4 NOT NULL,
                                      keyvalue int4 NOT NULL,
                                      CONSTRAINT uniquekeys_pkey PRIMARY KEY (id)
);


-- userpreferences definition

-- Drop table

-- DROP TABLE userpreferences;

CREATE TABLE userpreferences (
                                           username varchar(80) NOT NULL,
                                           wizard int2 NOT NULL,
                                           loadonpageselect int2 NOT NULL,
                                           translationwarning int2 NOT NULL,
                                           defaultpageownergroup varchar(64) NULL,
                                           defaultpagejoingroups varchar(256) NULL,
                                           defaultcontentownergroup varchar(64) NULL,
                                           defaultcontentjoingroups varchar(256) NULL,
                                           defaultwidgetownergroup varchar(64) NULL,
                                           defaultwidgetjoingroups varchar(256) NULL,
                                           CONSTRAINT userpreferences_pkey PRIMARY KEY (username)
);


-- widgetcatalog definition

-- Drop table

-- DROP TABLE widgetcatalog;

CREATE TABLE widgetcatalog (
                                         code varchar(40) NOT NULL,
                                         titles text NOT NULL,
                                         parameters text NULL,
                                         plugincode varchar(30) NULL,
                                         parenttypecode varchar(40) NULL,
                                         defaultconfig text NULL,
                                         "locked" int2 NOT NULL,
                                         maingroup varchar(20) NULL,
                                         configui text NULL,
                                         bundleid varchar(150) NULL,
                                         readonlypagewidgetconfig int2 NULL,
                                         widgetcategory varchar(80) NULL,
                                         icon varchar(80) NULL,
                                         CONSTRAINT widgetcatalog_pkey PRIMARY KEY (code)
);


-- contentattributeroles definition

-- Drop table

-- DROP TABLE contentattributeroles;

CREATE TABLE contentattributeroles (
                                                 id serial4 NOT NULL,
                                                 contentid varchar(16) NOT NULL,
                                                 attrname varchar(30) NOT NULL,
                                                 rolename varchar(50) NOT NULL,
                                                 CONSTRAINT contentattributeroles_pkey PRIMARY KEY (id)
);
CREATE INDEX contentattributeroles_attrname_idx ON contentattributeroles USING btree (attrname);
CREATE INDEX contentattributeroles_contentid_idx ON contentattributeroles USING btree (contentid);
CREATE INDEX contentattributeroles_rolename_idx ON contentattributeroles USING btree (rolename);




-- contentrelations definition

-- Drop table

-- DROP TABLE contentrelations;

CREATE TABLE contentrelations (
                                            id serial4 NOT NULL,
                                            contentid varchar(16) NOT NULL,
                                            refpage varchar(30) NULL,
                                            refcontent varchar(16) NULL,
                                            refresource varchar(16) NULL,
                                            refcategory varchar(30) NULL,
                                            refgroup varchar(20) NULL,
                                            CONSTRAINT contentrelations_pkey PRIMARY KEY (id)

);
CREATE INDEX contentrelations_contentid_idx ON contentrelations USING btree (contentid);
CREATE INDEX contentrelations_refcategory_idx ON contentrelations USING btree (refcategory);
CREATE INDEX contentrelations_refgroup_idx ON contentrelations USING btree (refgroup);


-- contentsearch definition

-- Drop table

-- DROP TABLE contentsearch;

CREATE TABLE contentsearch (
                                         id serial4 NOT NULL,
                                         contentid varchar(16) NOT NULL,
                                         attrname varchar(30) NOT NULL,
                                         textvalue varchar(255) NULL,
                                         datevalue timestamp NULL,
                                         numvalue int4 NULL,
                                         langcode varchar(3) NULL,
                                         CONSTRAINT contentsearch_pkey PRIMARY KEY (id)

);
CREATE INDEX contentsearch_attrname_idx ON contentsearch USING btree (attrname);
CREATE INDEX contentsearch_contentid_idx ON contentsearch USING btree (contentid);


-- guifragment definition

-- Drop table

-- DROP TABLE guifragment;

CREATE TABLE guifragment (
                                       code varchar(50) NOT NULL,
                                       widgettypecode varchar(40) NULL,
                                       plugincode varchar(30) NULL,
                                       gui text NULL,
                                       defaultgui text NULL,
                                       "locked" int2 NOT NULL,
                                       CONSTRAINT guifragment_pkey PRIMARY KEY (code)
);


-- pages_metadata_draft definition

-- Drop table

-- DROP TABLE pages_metadata_draft;

CREATE TABLE pages_metadata_draft (
                                                code varchar(30) NOT NULL,
                                                groupcode varchar(30) NOT NULL,
                                                titles text NOT NULL,
                                                modelcode varchar(40) NOT NULL,
                                                showinmenu int2 NOT NULL,
                                                extraconfig text NULL,
                                                updatedat timestamp NULL,
                                                CONSTRAINT pages_metadata_draft_pkey PRIMARY KEY (code)

);


-- pages_metadata_online definition

-- Drop table

-- DROP TABLE pages_metadata_online;

CREATE TABLE pages_metadata_online (
                                                 code varchar(30) NOT NULL,
                                                 groupcode varchar(30) NOT NULL,
                                                 titles text NOT NULL,
                                                 modelcode varchar(40) NOT NULL,
                                                 showinmenu int2 NOT NULL,
                                                 extraconfig text NULL,
                                                 updatedat timestamp NULL,
                                                 CONSTRAINT pages_metadata_online_pkey PRIMARY KEY (code)
);


-- resourcerelations definition

-- Drop table

-- DROP TABLE resourcerelations;

CREATE TABLE resourcerelations (
                                             id serial4 NOT NULL,
                                             resid varchar(16) NOT NULL,
                                             refcategory varchar(30) NOT NULL,
                                             CONSTRAINT resourcerelations_pkey PRIMARY KEY (id)

);


-- widgetconfig definition

-- Drop table

-- DROP TABLE widgetconfig;

CREATE TABLE widgetconfig (
                                        pagecode varchar(30) NOT NULL,
                                        framepos int4 NOT NULL,
                                        widgetcode varchar(40) NOT NULL,
                                        config text NULL,
                                        CONSTRAINT widgetconfig_pkey PRIMARY KEY (pagecode, framepos)

);


-- widgetconfig_draft definition

-- Drop table

-- DROP TABLE widgetconfig_draft;

CREATE TABLE widgetconfig_draft (
                                              pagecode varchar(30) NOT NULL,
                                              framepos int4 NOT NULL,
                                              widgetcode varchar(40) NOT NULL,
                                              config text NULL,
                                              CONSTRAINT widgetconfig_draft_pkey PRIMARY KEY (pagecode, framepos)

);


-- workcontentattributeroles definition

-- Drop table

-- DROP TABLE workcontentattributeroles;

CREATE TABLE workcontentattributeroles (
                                                     id serial4 NOT NULL,
                                                     contentid varchar(16) NOT NULL,
                                                     attrname varchar(30) NOT NULL,
                                                     rolename varchar(50) NOT NULL,
                                                     CONSTRAINT workcontentattributeroles_pkey PRIMARY KEY (id)
);
CREATE INDEX workcontentattributeroles_attrname_idx ON workcontentattributeroles USING btree (attrname);
CREATE INDEX workcontentattributeroles_contentid_idx ON workcontentattributeroles USING btree (contentid);
CREATE INDEX workcontentattributeroles_rolename_idx ON workcontentattributeroles USING btree (rolename);


-- workcontentrelations definition

-- Drop table

-- DROP TABLE workcontentrelations;

CREATE TABLE workcontentrelations (
                                                id serial4 NOT NULL,
                                                contentid varchar(16) NOT NULL,
                                                refcategory varchar(30) NULL,
                                                CONSTRAINT workcontentrelations_pkey PRIMARY KEY (id)
);
CREATE INDEX workcontentrelations_contentid_idx ON workcontentrelations USING btree (contentid);
CREATE INDEX workcontentrelations_refcategory_idx ON workcontentrelations USING btree (refcategory);


-- workcontentsearch definition

-- Drop table

-- DROP TABLE workcontentsearch;

CREATE TABLE workcontentsearch (
                                             id serial4 NOT NULL,
                                             contentid varchar(16) NOT NULL,
                                             attrname varchar(30) NOT NULL,
                                             textvalue varchar(255) NULL,
                                             datevalue timestamp NULL,
                                             numvalue int4 NULL,
                                             langcode varchar(3) NULL,
                                             CONSTRAINT workcontentsearch_pkey PRIMARY KEY (id)
);
CREATE INDEX workcontentsearch_attrname_idx ON workcontentsearch USING btree (attrname);
CREATE INDEX workcontentsearch_contentid_idx ON workcontentsearch USING btree (contentid);


-- actionlogrecords definition

-- Drop table

-- DROP TABLE actionlogrecords;

CREATE TABLE actionlogrecords (
                                            id int4 NOT NULL,
                                            username varchar(40) NULL,
                                            actiondate timestamp NULL,
                                            "namespace" text NULL,
                                            actionname varchar(250) NULL,
                                            parameters text NULL,
                                            activitystreaminfo text NULL,
                                            updatedate timestamp NULL,
                                            CONSTRAINT actionlogrecords_pkey PRIMARY KEY (id)
);
CREATE INDEX actionlogrecords_actiondate_idx ON actionlogrecords USING btree (actiondate);
CREATE INDEX actionlogrecords_updatedate_idx ON actionlogrecords USING btree (updatedate);


-- api_oauth_consumers definition

-- Drop table

-- DROP TABLE api_oauth_consumers;

CREATE TABLE api_oauth_consumers (
                                               consumerkey varchar(100) NOT NULL,
                                               consumersecret varchar(100) NOT NULL,
                                               "name" varchar(255) NULL,
                                               description text NOT NULL,
                                               callbackurl text NULL,
                                               "scope" varchar(255) NULL,
                                               authorizedgranttypes varchar(255) NULL,
                                               expirationdate timestamp NULL,
                                               issueddate timestamp NULL,
                                               CONSTRAINT api_oauth_consumers_pkey PRIMARY KEY (consumerkey)
);


-- api_oauth_tokens definition

-- Drop table

-- DROP TABLE api_oauth_tokens;

CREATE TABLE api_oauth_tokens (
                                            accesstoken varchar(100) NOT NULL,
                                            clientid varchar(100) NOT NULL,
                                            expiresin timestamp NOT NULL,
                                            refreshtoken varchar(255) NOT NULL,
                                            granttype varchar(100) NOT NULL,
                                            localuser varchar(100) NULL,
                                            CONSTRAINT api_oauth_tokens_pkey PRIMARY KEY (accesstoken)
);


-- authgroups definition

-- Drop table

-- DROP TABLE authgroups;

CREATE TABLE authgroups (
                                      groupname varchar(20) NOT NULL,
                                      descr varchar(50) NOT NULL,
                                      CONSTRAINT authgroups_pkey PRIMARY KEY (groupname)
);


-- authpermissions definition

-- Drop table

-- DROP TABLE authpermissions;

CREATE TABLE authpermissions (
                                           permissionname varchar(30) NOT NULL,
                                           descr varchar(50) NOT NULL,
                                           CONSTRAINT authpermissions_pkey PRIMARY KEY (permissionname)
);


-- authroles definition

-- Drop table

-- DROP TABLE authroles;

CREATE TABLE authroles (
                                     rolename varchar(20) NOT NULL,
                                     descr varchar(50) NOT NULL,
                                     CONSTRAINT authroles_pkey PRIMARY KEY (rolename)
);


-- authuserprofiles definition

-- Drop table

-- DROP TABLE authuserprofiles;

CREATE TABLE authuserprofiles (
                                            username varchar(80) NOT NULL,
                                            profiletype varchar(30) NOT NULL,
                                            profilexml text NOT NULL,
                                            publicprofile int2 NOT NULL,
                                            CONSTRAINT authuserprofiles_pkey PRIMARY KEY (username)
);
CREATE INDEX authuserprofiles_profiletype_idx ON authuserprofiles USING btree (profiletype);


-- authusers definition

-- Drop table

-- DROP TABLE authusers;

CREATE TABLE authusers (
                                     username varchar(80) NOT NULL,
                                     passwd varchar(512) NULL,
                                     registrationdate timestamp NOT NULL,
                                     lastaccess timestamp NULL,
                                     lastpasswordchange timestamp NULL,
                                     active int2 NULL,
                                     CONSTRAINT authusers_pkey PRIMARY KEY (username)
);


-- authusershortcuts definition

-- Drop table

-- DROP TABLE authusershortcuts;

CREATE TABLE authusershortcuts (
                                             username varchar(40) NOT NULL,
                                             config text NOT NULL,
                                             CONSTRAINT authusershortcuts_pkey PRIMARY KEY (username)
);


-- dataobjectmodels definition

-- Drop table

-- DROP TABLE dataobjectmodels;

CREATE TABLE dataobjectmodels (
                                            modelid int4 NOT NULL,
                                            "datatype" varchar(30) NOT NULL,
                                            descr varchar(50) NOT NULL,
                                            model text NULL,
                                            stylesheet varchar(50) NULL,
                                            CONSTRAINT dataobjectmodels_pkey PRIMARY KEY (modelid)
);


-- dataobjectrelations definition

-- Drop table

-- DROP TABLE dataobjectrelations;

CREATE TABLE dataobjectrelations (
                                               id serial4 NOT NULL,
                                               dataid varchar(16) NOT NULL,
                                               refcategory varchar(30) NULL,
                                               refgroup varchar(20) NULL,
                                               CONSTRAINT dataobjectrelations_pkey PRIMARY KEY (id)
);
CREATE INDEX dataobjectrelations_dataid_idx ON dataobjectrelations USING btree (dataid);
CREATE INDEX dataobjectrelations_refcategory_idx ON dataobjectrelations USING btree (refcategory);
CREATE INDEX dataobjectrelations_refgroup_idx ON dataobjectrelations USING btree (refgroup);


-- dataobjects definition

-- Drop table

-- DROP TABLE dataobjects;

CREATE TABLE dataobjects (
                                       dataid varchar(16) NOT NULL,
                                       "datatype" varchar(30) NOT NULL,
                                       descr varchar(255) NOT NULL,
                                       status varchar(12) NOT NULL,
                                       workxml text NOT NULL,
                                       created varchar(20) NULL,
                                       lastmodified varchar(20) NULL,
                                       onlinexml text NULL,
                                       maingroup varchar(20) NOT NULL,
                                       currentversion varchar(7) NOT NULL,
                                       lasteditor varchar(40) NULL,
                                       firsteditor varchar(40) NULL,
                                       CONSTRAINT dataobjects_pkey PRIMARY KEY (dataid)
);
CREATE INDEX dataobjects_datatype_idx ON dataobjects USING btree (datatype);
CREATE INDEX dataobjects_lastmodified_idx ON dataobjects USING btree (lastmodified);
CREATE INDEX dataobjects_maingroup_idx ON dataobjects USING btree (maingroup);
CREATE INDEX dataobjects_status_idx ON dataobjects USING btree (status);


-- actionlogcommentrecords definition

-- Drop table

-- DROP TABLE actionlogcommentrecords;

CREATE TABLE actionlogcommentrecords (
                                                   id int4 NOT NULL,
                                                   recordid int4 NOT NULL,
                                                   username varchar(20) NOT NULL,
                                                   commenttext text NOT NULL,
                                                   commentdate timestamp NOT NULL,
                                                   CONSTRAINT actionlogcommentrecords_pkey PRIMARY KEY (id)
);


-- actionloglikerecords definition

-- Drop table

-- DROP TABLE actionloglikerecords;

CREATE TABLE actionloglikerecords (
                                                id serial4 NOT NULL,
                                                recordid int4 NOT NULL,
                                                username varchar(20) NOT NULL,
                                                likedate timestamp NOT NULL,
                                                CONSTRAINT actionloglikerecords_pkey PRIMARY KEY (id)
);


-- actionlogrelations definition

-- Drop table

-- DROP TABLE actionlogrelations;

CREATE TABLE actionlogrelations (
                                              id serial4 NOT NULL,
                                              recordid int4 NOT NULL,
                                              refgroup varchar(20) NULL,
                                              CONSTRAINT actionlogrelations_pkey PRIMARY KEY (id)
);
CREATE INDEX actionlogrelations_recordid_idx ON actionlogrelations USING btree (recordid);
CREATE INDEX actionlogrelations_refgroup_idx ON actionlogrelations USING btree (refgroup);


-- apicatalog_methods definition

-- Drop table

-- DROP TABLE apicatalog_methods;

CREATE TABLE apicatalog_methods (
                                              resourcecode varchar(100) NOT NULL,
                                              httpmethod varchar(6) NOT NULL,
                                              isactive int2 NOT NULL,
                                              ishidden int2 NOT NULL,
                                              authenticationrequired int2 NULL,
                                              authorizationrequired varchar(30) NULL,
                                              CONSTRAINT apicatalog_methods_pkey PRIMARY KEY (resourcecode, httpmethod)
);


-- apicatalog_services definition

-- Drop table

-- DROP TABLE apicatalog_services;

CREATE TABLE apicatalog_services (
                                               servicekey varchar(100) NOT NULL,
                                               resourcecode varchar(100) NOT NULL,
                                               description text NOT NULL,
                                               parameters text NULL,
                                               tag varchar(100) NULL,
                                               freeparameters text NULL,
                                               isactive int2 NOT NULL,
                                               ishidden int2 NOT NULL,
                                               myentando int2 NOT NULL,
                                               authenticationrequired int2 NULL,
                                               requiredpermission varchar(30) NULL,
                                               requiredgroup varchar(20) NULL,
                                               CONSTRAINT apicatalog_services_pkey PRIMARY KEY (servicekey)
);


-- authrolepermissions definition

-- Drop table

-- DROP TABLE authrolepermissions;

CREATE TABLE authrolepermissions (
                                               id serial4 NOT NULL,
                                               rolename varchar(20) NOT NULL,
                                               permissionname varchar(30) NOT NULL,
                                               CONSTRAINT authrolepermissions_pkey PRIMARY KEY (id)
);


-- authusergrouprole definition

-- Drop table

-- DROP TABLE authusergrouprole;

CREATE TABLE authusergrouprole (
                                             id serial4 NOT NULL,
                                             username varchar(80) NOT NULL,
                                             groupname varchar(20) NULL,
                                             rolename varchar(20) NULL,
                                             CONSTRAINT authusergrouprole_pkey PRIMARY KEY (id)
);


-- authuserprofileattrroles definition

-- Drop table

-- DROP TABLE authuserprofileattrroles;

CREATE TABLE authuserprofileattrroles (
                                                    id serial4 NOT NULL,
                                                    username varchar(80) NOT NULL,
                                                    attrname varchar(30) NOT NULL,
                                                    rolename varchar(50) NOT NULL,
                                                    CONSTRAINT authuserprofileattrroles_pkey PRIMARY KEY (id)
);
CREATE INDEX authuserprofileattrroles_attrname_idx ON authuserprofileattrroles USING btree (attrname);
CREATE INDEX authuserprofileattrroles_rolename_idx ON authuserprofileattrroles USING btree (rolename);
CREATE INDEX authuserprofileattrroles_username_idx ON authuserprofileattrroles USING btree (username);


-- authuserprofilesearch definition

-- Drop table

-- DROP TABLE authuserprofilesearch;

CREATE TABLE authuserprofilesearch (
                                                 id serial4 NOT NULL,
                                                 username varchar(80) NOT NULL,
                                                 attrname varchar(30) NOT NULL,
                                                 textvalue varchar(255) NULL,
                                                 datevalue timestamp NULL,
                                                 numvalue int4 NULL,
                                                 langcode varchar(3) NULL,
                                                 CONSTRAINT authuserprofilesearch_pkey PRIMARY KEY (id)
);
CREATE INDEX authuserprofilesearch_attrname_idx ON authuserprofilesearch USING btree (attrname);
CREATE INDEX authuserprofilesearch_username_idx ON authuserprofilesearch USING btree (username);


-- dataobjectattributeroles definition

-- Drop table

-- DROP TABLE dataobjectattributeroles;

CREATE TABLE dataobjectattributeroles (
                                                    id serial4 NOT NULL,
                                                    dataid varchar(16) NOT NULL,
                                                    attrname varchar(30) NOT NULL,
                                                    rolename varchar(50) NOT NULL,
                                                    CONSTRAINT dataobjectattributeroles_pkey PRIMARY KEY (id)
);
CREATE INDEX dataobjectattributeroles_attrname_idx ON dataobjectattributeroles USING btree (attrname);
CREATE INDEX dataobjectattributeroles_dataid_idx ON dataobjectattributeroles USING btree (dataid);
CREATE INDEX dataobjectattributeroles_rolename_idx ON dataobjectattributeroles USING btree (rolename);


-- dataobjectsearch definition

-- Drop table

-- DROP TABLE dataobjectsearch;

CREATE TABLE dataobjectsearch (
                                            id serial4 NOT NULL,
                                            dataid varchar(16) NOT NULL,
                                            attrname varchar(30) NOT NULL,
                                            textvalue varchar(255) NULL,
                                            datevalue timestamp NULL,
                                            numvalue int4 NULL,
                                            langcode varchar(3) NULL,
                                            CONSTRAINT dataobjectsearch_pkey PRIMARY KEY (id)
);
CREATE INDEX dataobjectsearch_attrname_idx ON dataobjectsearch USING btree (attrname);
CREATE INDEX dataobjectsearch_dataid_idx ON dataobjectsearch USING btree (dataid);
