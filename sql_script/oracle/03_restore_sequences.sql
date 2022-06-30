DROP SEQUENCE contentattributeroles_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM contentattributeroles;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE contentattributeroles_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


DROP SEQUENCE contentrelations_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM contentrelations;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE contentrelations_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

DROP SEQUENCE contentsearch_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM contentsearch;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE contentsearch_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

DROP SEQUENCE resourcerelations_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM resourcerelations;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE resourcerelations_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

DROP SEQUENCE workcontentattrroles_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM workcontentattributeroles;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE workcontentattrroles_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

DROP SEQUENCE workcontentrelations_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM workcontentrelations;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE workcontentrelations_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


DROP SEQUENCE workcontentsearch_id_seq;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM workcontentsearch;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE workcontentsearch_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


DROP SEQUENCE actionloglikerecords_id_seq;
DROP SEQUENCE actionlogrecords_id_seq;
DROP SEQUENCE actionlogrelations_id_seq;
DROP SEQUENCE authrolepermissions_id_seq;
DROP SEQUENCE authusergrouprole_id_seq;
DROP SEQUENCE authusrprfattrroles_id_seq;
DROP SEQUENCE authuserprofilesearch_id_seq;


declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM actionloglikerecords;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE actionloglikerecords_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM actionlogrecords;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE actionlogrecords_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM actionlogrelations;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE actionlogrelations_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM authrolepermissions;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE authrolepermissions_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM authusergrouprole;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE authusergrouprole_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM authuserprofileattrroles;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE authusrprfattrroles_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;

declare
lastSeq number;
begin
SELECT MAX(ID) + 1 INTO lastSeq FROM authuserprofilesearch;
if lastSeq IS NULL then lastSeq := 1; end if;
execute immediate 'CREATE SEQUENCE authuserprofilesearch_id_seq INCREMENT BY 1 START WITH ' || lastSeq || ' MINVALUE 1 NOCACHE';
end;


ALTER TABLE contentattributeroles ADD CONSTRAINT contentattrroles_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE contentrelations ADD CONSTRAINT contentrelations_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE contentrelations ADD CONSTRAINT contentrelations_refcat_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);

ALTER TABLE contentrelations ADD CONSTRAINT contentrelations_refcont_fkey FOREIGN KEY (refcontent) REFERENCES contents(contentid);

ALTER TABLE contentrelations ADD CONSTRAINT contentrelations_refpage_fkey FOREIGN KEY (refpage) REFERENCES pages(code);

ALTER TABLE contentrelations ADD CONSTRAINT contentrelations_refres_fkey FOREIGN KEY (refresource) REFERENCES resources(resid);

ALTER TABLE contentsearch ADD CONSTRAINT contentsearch_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE guifragment ADD CONSTRAINT guifragment_wdgtypecode_fkey FOREIGN KEY (widgettypecode) REFERENCES widgetcatalog(code);

ALTER TABLE pages_metadata_draft ADD CONSTRAINT pgs_metadata_draft_code_fk FOREIGN KEY (code) REFERENCES pages(code);

ALTER TABLE pages_metadata_draft ADD CONSTRAINT pgs_metadata_draft_modcode_fk FOREIGN KEY (modelcode) REFERENCES pagemodels(code);

ALTER TABLE pages_metadata_online ADD CONSTRAINT pgs_metadata_online_code_fk FOREIGN KEY (code) REFERENCES pages(code);

ALTER TABLE pages_metadata_online ADD CONSTRAINT pgs_metadata_online_modcode_fk FOREIGN KEY (modelcode) REFERENCES pagemodels(code);

ALTER TABLE resourcerelations ADD CONSTRAINT resourcerelations_refcat_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);

ALTER TABLE resourcerelations ADD CONSTRAINT resourcerelations_resid_fkey FOREIGN KEY (resid) REFERENCES resources(resid);

ALTER TABLE widgetconfig_draft ADD CONSTRAINT widgetcfg_draft_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);

ALTER TABLE widgetconfig_draft ADD CONSTRAINT widgetcfg_draft_wdgcode_fkey FOREIGN KEY (widgetcode) REFERENCES widgetcatalog(code);

ALTER TABLE widgetconfig ADD CONSTRAINT widgetconfig_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);

ALTER TABLE widgetconfig ADD CONSTRAINT widgetconfig_widgetcode_fkey FOREIGN KEY (widgetcode) REFERENCES widgetcatalog(code);

ALTER TABLE workcontentattributeroles ADD CONSTRAINT workcontentattrroles_id_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE workcontentrelations ADD CONSTRAINT workcontentrelations_id_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE workcontentsearch ADD CONSTRAINT workcontentsearch_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


ALTER TABLE actionlogcommentrecords ADD CONSTRAINT actionlogcommentrec_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);

ALTER TABLE actionloglikerecords ADD CONSTRAINT actionloglikerec_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);

ALTER TABLE actionlogrelations ADD CONSTRAINT actionlogrelations_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);

ALTER TABLE apicatalog_methods ADD CONSTRAINT apicatalog_methods_auth_fkey FOREIGN KEY (authorizationrequired) REFERENCES authpermissions(permissionname);

ALTER TABLE apicatalog_services ADD CONSTRAINT apicatalog_services_gr_fkey FOREIGN KEY (requiredgroup) REFERENCES authgroups(groupname);

ALTER TABLE apicatalog_services ADD CONSTRAINT apicatalog_services_perm_fkey FOREIGN KEY (requiredpermission) REFERENCES authpermissions(permissionname);

ALTER TABLE authrolepermissions ADD CONSTRAINT authrolepermissions_perm_fkey FOREIGN KEY (permissionname) REFERENCES authpermissions(permissionname);

ALTER TABLE authrolepermissions ADD CONSTRAINT authrolepermissions_role_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename);

ALTER TABLE authusergrouprole ADD CONSTRAINT authusergrouprole_grn_fkey FOREIGN KEY (groupname) REFERENCES authgroups(groupname);

ALTER TABLE authusergrouprole ADD CONSTRAINT authusergrouprole_rln_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename);

ALTER TABLE authuserprofileattrroles ADD CONSTRAINT authuserprofileattrroles_fkey FOREIGN KEY (username) REFERENCES authuserprofiles(username);

ALTER TABLE authuserprofilesearch ADD CONSTRAINT authuserprofilesearch_fkey FOREIGN KEY (username) REFERENCES authuserprofiles(username);
