DROP SEQUENCE projectname_schema.contentattributeroles_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.contentattributeroles;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE projectname_schema.contentattributeroles_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


DROP SEQUENCE projectname_schema.contentrelations_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.contentrelations;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE projectname_schema.contentrelations_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

DROP SEQUENCE projectname_schema.contentsearch_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.contentsearch;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE projectname_schema.contentsearch_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

DROP SEQUENCE projectname_schema.resourcerelations_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.resourcerelations;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE projectname_schema.resourcerelations_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

DROP SEQUENCE projectname_schema.workcontentattrroles_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.workcontentattributeroles;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE projectname_schema.workcontentattrroles_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

DROP SEQUENCE projectname_schema.workcontentrelations_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.workcontentrelations;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE projectname_schema.workcontentrelations_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


DROP SEQUENCE projectname_schema.workcontentsearch_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.workcontentsearch;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE projectname_schema.workcontentsearch_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


DROP SEQUENCE projectname_schema.actionloglikerecords_id_seq;
DROP SEQUENCE projectname_schema.actionlogrecords_id_seq;
DROP SEQUENCE projectname_schema.actionlogrelations_id_seq;
DROP SEQUENCE projectname_schema.authrolepermissions_id_seq;
DROP SEQUENCE projectname_schema.authusergrouprole_id_seq;
DROP SEQUENCE projectname_schema.authusrprfattrroles_id_seq;
DROP SEQUENCE projectname_schema.authuserprofilesearch_id_seq;


declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.actionloglikerecords;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE actionloglikerecords_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.actionlogrecords;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE actionlogrecords_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.actionlogrelations;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE actionlogrelations_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.authrolepermissions;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE authrolepermissions_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.authusergrouprole;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE authusergrouprole_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.authuserprofileattrroles;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE authusrprfattrroles_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM projectname_schema.authuserprofilesearch;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE authuserprofilesearch_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


ALTER TABLE projectname_schema.contentattributeroles ADD CONSTRAINT contentattrroles_contid_fkey FOREIGN KEY (contentid) REFERENCES projectname_schema.contents(contentid);

ALTER TABLE projectname_schema.contentrelations ADD CONSTRAINT contentrelations_contid_fkey FOREIGN KEY (contentid) REFERENCES projectname_schema.contents(contentid);

ALTER TABLE projectname_schema.contentrelations ADD CONSTRAINT contentrelations_refcat_fkey FOREIGN KEY (refcategory) REFERENCES projectname_schema.categories(catcode);

ALTER TABLE projectname_schema.contentrelations ADD CONSTRAINT contentrelations_refcont_fkey FOREIGN KEY (refcontent) REFERENCES projectname_schema.contents(contentid);

ALTER TABLE projectname_schema.contentrelations ADD CONSTRAINT contentrelations_refpage_fkey FOREIGN KEY (refpage) REFERENCES projectname_schema.pages(code);

ALTER TABLE projectname_schema.contentrelations ADD CONSTRAINT contentrelations_refres_fkey FOREIGN KEY (refresource) REFERENCES projectname_schema.resources(resid);

ALTER TABLE projectname_schema.contentsearch ADD CONSTRAINT contentsearch_contid_fkey FOREIGN KEY (contentid) REFERENCES projectname_schema.contents(contentid);

ALTER TABLE projectname_schema.guifragment ADD CONSTRAINT guifragment_wdgtypecode_fkey FOREIGN KEY (widgettypecode) REFERENCES projectname_schema.widgetcatalog(code);

ALTER TABLE projectname_schema.pages_metadata_draft ADD CONSTRAINT pgs_metadata_draft_code_fk FOREIGN KEY (code) REFERENCES projectname_schema.pages(code);

ALTER TABLE projectname_schema.pages_metadata_draft ADD CONSTRAINT pgs_metadata_draft_modcode_fk FOREIGN KEY (modelcode) REFERENCES projectname_schema.pagemodels(code);

ALTER TABLE projectname_schema.pages_metadata_online ADD CONSTRAINT pgs_metadata_online_code_fk FOREIGN KEY (code) REFERENCES projectname_schema.pages(code);

ALTER TABLE projectname_schema.pages_metadata_online ADD CONSTRAINT pgs_metadata_online_modcode_fk FOREIGN KEY (modelcode) REFERENCES projectname_schema.pagemodels(code);

ALTER TABLE projectname_schema.resourcerelations ADD CONSTRAINT resourcerelations_refcat_fkey FOREIGN KEY (refcategory) REFERENCES projectname_schema.categories(catcode);

ALTER TABLE projectname_schema.resourcerelations ADD CONSTRAINT resourcerelations_resid_fkey FOREIGN KEY (resid) REFERENCES projectname_schema.resources(resid);

ALTER TABLE projectname_schema.widgetconfig_draft ADD CONSTRAINT widgetcfg_draft_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES projectname_schema.pages(code);

ALTER TABLE projectname_schema.widgetconfig_draft ADD CONSTRAINT widgetcfg_draft_wdgcode_fkey FOREIGN KEY (widgetcode) REFERENCES projectname_schema.widgetcatalog(code);

ALTER TABLE projectname_schema.widgetconfig ADD CONSTRAINT widgetconfig_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES projectname_schema.pages(code);

ALTER TABLE projectname_schema.widgetconfig ADD CONSTRAINT widgetconfig_widgetcode_fkey FOREIGN KEY (widgetcode) REFERENCES projectname_schema.widgetcatalog(code);

ALTER TABLE projectname_schema.workcontentattributeroles ADD CONSTRAINT workcontentattrroles_id_fkey FOREIGN KEY (contentid) REFERENCES projectname_schema.contents(contentid);

ALTER TABLE projectname_schema.workcontentrelations ADD CONSTRAINT workcontentrelations_id_fkey FOREIGN KEY (contentid) REFERENCES projectname_schema.contents(contentid);

ALTER TABLE projectname_schema.workcontentsearch ADD CONSTRAINT workcontentsearch_contid_fkey FOREIGN KEY (contentid) REFERENCES projectname_schema.contents(contentid);


ALTER TABLE projectname_schema.actionlogcommentrecords ADD CONSTRAINT actionlogcommentrec_recid_fkey FOREIGN KEY (recordid) REFERENCES projectname_schema.actionlogrecords(id);

ALTER TABLE projectname_schema.actionloglikerecords ADD CONSTRAINT actionloglikerec_recid_fkey FOREIGN KEY (recordid) REFERENCES projectname_schema.actionlogrecords(id);

ALTER TABLE projectname_schema.actionlogrelations ADD CONSTRAINT actionlogrelations_recid_fkey FOREIGN KEY (recordid) REFERENCES projectname_schema.actionlogrecords(id);

ALTER TABLE projectname_schema.apicatalog_methods ADD CONSTRAINT apicatalog_methods_auth_fkey FOREIGN KEY (authorizationrequired) REFERENCES projectname_schema.authpermissions(permissionname);

ALTER TABLE projectname_schema.apicatalog_services ADD CONSTRAINT apicatalog_services_gr_fkey FOREIGN KEY (requiredgroup) REFERENCES projectname_schema.authgroups(groupname);

ALTER TABLE projectname_schema.apicatalog_services ADD CONSTRAINT apicatalog_services_perm_fkey FOREIGN KEY (requiredpermission) REFERENCES projectname_schema.authpermissions(permissionname);

ALTER TABLE projectname_schema.authrolepermissions ADD CONSTRAINT authrolepermissions_perm_fkey FOREIGN KEY (permissionname) REFERENCES projectname_schema.authpermissions(permissionname);

ALTER TABLE projectname_schema.authrolepermissions ADD CONSTRAINT authrolepermissions_role_fkey FOREIGN KEY (rolename) REFERENCES projectname_schema.authroles(rolename);

ALTER TABLE projectname_schema.authusergrouprole ADD CONSTRAINT authusergrouprole_grn_fkey FOREIGN KEY (groupname) REFERENCES projectname_schema.authgroups(groupname);

ALTER TABLE projectname_schema.authusergrouprole ADD CONSTRAINT authusergrouprole_rln_fkey FOREIGN KEY (rolename) REFERENCES projectname_schema.authroles(rolename);

ALTER TABLE projectname_schema.authuserprofileattrroles ADD CONSTRAINT authuserprofileattrroles_fkey FOREIGN KEY (username) REFERENCES projectname_schema.authuserprofiles(username);

ALTER TABLE projectname_schema.authuserprofilesearch ADD CONSTRAINT authuserprofilesearch_fkey FOREIGN KEY (username) REFERENCES projectname_schema.authuserprofiles(username);
