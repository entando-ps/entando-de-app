ALTER TABLE contentattributeroles
    ADD CONSTRAINT contentattrroles_contid_fkey  FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE contentrelations
    ADD CONSTRAINT contentrelations_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);
ALTER TABLE contentrelations

    ADD CONSTRAINT contentrelations_refcat_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);
ALTER TABLE contentrelations

    ADD CONSTRAINT contentrelations_refcont_fkey FOREIGN KEY (refcontent) REFERENCES contents(contentid);
ALTER TABLE contentrelations

    ADD CONSTRAINT contentrelations_refpage_fkey FOREIGN KEY (refpage) REFERENCES pages(code);
ALTER TABLE contentrelations

    ADD CONSTRAINT contentrelations_refres_fkey FOREIGN KEY (refresource) REFERENCES resources(resid);


ALTER TABLE   contentsearch
    ADD CONSTRAINT contentsearch_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


ALTER TABLE guifragment
    ADD CONSTRAINT guifragment_wdgtypecode_fkey FOREIGN KEY (widgettypecode) REFERENCES widgetcatalog(code);

ALTER TABLE pages_metadata_draft
    ADD CONSTRAINT pages_metadata_draft_code_fk FOREIGN KEY (code) REFERENCES pages(code);
ALTER TABLE pages_metadata_draft
    ADD CONSTRAINT pages_metadata_draft_modelcode_fk FOREIGN KEY (modelcode) REFERENCES pagemodels(code);

ALTER TABLE pages_metadata_online
    ADD CONSTRAINT pages_metadata_online_code_fk FOREIGN KEY (code) REFERENCES pages(code);
ALTER TABLE pages_metadata_online
    ADD CONSTRAINT pages_metadata_online_modelcode_fk FOREIGN KEY (modelcode) REFERENCES pagemodels(code);


ALTER TABLE resourcerelations
    ADD CONSTRAINT resourcerelations_refcat_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);
ALTER TABLE resourcerelations
    ADD CONSTRAINT resourcerelations_resid_fkey FOREIGN KEY (resid) REFERENCES resources(resid);

ALTER TABLE widgetconfig
    ADD CONSTRAINT widgetconfig_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);
ALTER TABLE widgetconfig
    ADD CONSTRAINT widgetconfig_widgetcode_fkey FOREIGN KEY (widgetcode) REFERENCES widgetcatalog(code);


ALTER TABLE widgetconfig_draft
    ADD CONSTRAINT widgetconfig_draft_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);
ALTER TABLE widgetconfig_draft
    ADD CONSTRAINT widgetconfig_draft_widgetcode_fkey FOREIGN KEY (widgetcode) REFERENCES widgetcatalog(code);

ALTER TABLE workcontentattributeroles
    ADD CONSTRAINT workcontentattrroles_id_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE workcontentrelations
    ADD  CONSTRAINT workcontentrelations_id_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE workcontentsearch
    ADD CONSTRAINT workcontentsearch_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE actionlogcommentrecords
    ADD  CONSTRAINT actionlogcommentrec_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);

ALTER TABLE actionloglikerecords
    ADD CONSTRAINT actionloglikerec_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);


ALTER TABLE actionlogrelations
    ADD CONSTRAINT actionlogrelations_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);


ALTER TABLE apicatalog_methods
    ADD CONSTRAINT apicatalog_methods_auth_fkey FOREIGN KEY (authorizationrequired) REFERENCES authpermissions(permissionname);


ALTER TABLE apicatalog_services
    ADD CONSTRAINT apicatalog_services_gr_fkey FOREIGN KEY (requiredgroup) REFERENCES authgroups(groupname);
ALTER TABLE apicatalog_services
    ADD CONSTRAINT apicatalog_services_perm_fkey FOREIGN KEY (requiredpermission) REFERENCES authpermissions(permissionname);


ALTER TABLE authrolepermissions
    ADD CONSTRAINT authrolepermissions_perm_fkey FOREIGN KEY (permissionname) REFERENCES authpermissions(permissionname);
ALTER TABLE authrolepermissions
    ADD CONSTRAINT authrolepermissions_role_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename);


ALTER TABLE authusergrouprole
    ADD CONSTRAINT authusergrouprole_grn_fkey FOREIGN KEY (groupname) REFERENCES authgroups(groupname);
ALTER TABLE authusergrouprole
    ADD CONSTRAINT authusergrouprole_rln_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename);



ALTER TABLE authuserprofileattrroles
    ADD CONSTRAINT authuserprofileattrroles_fkey FOREIGN KEY (username) REFERENCES authuserprofiles(username);

ALTER TABLE authuserprofilesearch
    ADD CONSTRAINT authuserprofilesearch_fkey FOREIGN KEY (username) REFERENCES authuserprofiles(username);


ALTER TABLE dataobjectattributeroles
    ADD CONSTRAINT contentattrroles_contid_fkey FOREIGN KEY (dataid) REFERENCES dataobjects(dataid);


ALTER TABLE dataobjectsearch
    ADD CONSTRAINT dataobjectsearch_contid_fkey FOREIGN KEY (dataid) REFERENCES dataobjects(dataid);
ALTER TABLE contentattributeroles
    ADD CONSTRAINT contentattrroles_contid_fkey  FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE contentrelations
    ADD CONSTRAINT contentrelations_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);
ALTER TABLE contentrelations

    ADD CONSTRAINT contentrelations_refcat_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);
ALTER TABLE contentrelations

    ADD CONSTRAINT contentrelations_refcont_fkey FOREIGN KEY (refcontent) REFERENCES contents(contentid);
ALTER TABLE contentrelations

    ADD CONSTRAINT contentrelations_refpage_fkey FOREIGN KEY (refpage) REFERENCES pages(code);
ALTER TABLE contentrelations

    ADD CONSTRAINT contentrelations_refres_fkey FOREIGN KEY (refresource) REFERENCES resources(resid);


ALTER TABLE   contentsearch
    ADD CONSTRAINT contentsearch_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


ALTER TABLE guifragment
    ADD CONSTRAINT guifragment_wdgtypecode_fkey FOREIGN KEY (widgettypecode) REFERENCES widgetcatalog(code);

ALTER TABLE pages_metadata_draft
    ADD CONSTRAINT pages_metadata_draft_code_fk FOREIGN KEY (code) REFERENCES pages(code);
ALTER TABLE pages_metadata_draft
    ADD CONSTRAINT pages_metadata_draft_modelcode_fk FOREIGN KEY (modelcode) REFERENCES pagemodels(code);

ALTER TABLE pages_metadata_online
    ADD CONSTRAINT pages_metadata_online_code_fk FOREIGN KEY (code) REFERENCES pages(code);
ALTER TABLE pages_metadata_online
    ADD CONSTRAINT pages_metadata_online_modelcode_fk FOREIGN KEY (modelcode) REFERENCES pagemodels(code);


ALTER TABLE resourcerelations
    ADD CONSTRAINT resourcerelations_refcat_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);
ALTER TABLE resourcerelations
    ADD CONSTRAINT resourcerelations_resid_fkey FOREIGN KEY (resid) REFERENCES resources(resid);

ALTER TABLE widgetconfig
    ADD CONSTRAINT widgetconfig_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);
ALTER TABLE widgetconfig
    ADD CONSTRAINT widgetconfig_widgetcode_fkey FOREIGN KEY (widgetcode) REFERENCES widgetcatalog(code);


ALTER TABLE widgetconfig_draft
    ADD CONSTRAINT widgetconfig_draft_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);
ALTER TABLE widgetconfig_draft
    ADD CONSTRAINT widgetconfig_draft_widgetcode_fkey FOREIGN KEY (widgetcode) REFERENCES widgetcatalog(code);

ALTER TABLE workcontentattributeroles
    ADD CONSTRAINT workcontentattrroles_id_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE workcontentrelations
    ADD  CONSTRAINT workcontentrelations_id_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE workcontentsearch
    ADD CONSTRAINT workcontentsearch_contid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);

ALTER TABLE actionlogcommentrecords
    ADD  CONSTRAINT actionlogcommentrec_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);

ALTER TABLE actionloglikerecords
    ADD CONSTRAINT actionloglikerec_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);


ALTER TABLE actionlogrelations
    ADD CONSTRAINT actionlogrelations_recid_fkey FOREIGN KEY (recordid) REFERENCES actionlogrecords(id);


ALTER TABLE apicatalog_methods
    ADD CONSTRAINT apicatalog_methods_auth_fkey FOREIGN KEY (authorizationrequired) REFERENCES authpermissions(permissionname);


ALTER TABLE apicatalog_services
    ADD CONSTRAINT apicatalog_services_gr_fkey FOREIGN KEY (requiredgroup) REFERENCES authgroups(groupname);
ALTER TABLE apicatalog_services
    ADD CONSTRAINT apicatalog_services_perm_fkey FOREIGN KEY (requiredpermission) REFERENCES authpermissions(permissionname);


ALTER TABLE authrolepermissions
    ADD CONSTRAINT authrolepermissions_perm_fkey FOREIGN KEY (permissionname) REFERENCES authpermissions(permissionname);
ALTER TABLE authrolepermissions
    ADD CONSTRAINT authrolepermissions_role_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename);


ALTER TABLE authusergrouprole
    ADD CONSTRAINT authusergrouprole_grn_fkey FOREIGN KEY (groupname) REFERENCES authgroups(groupname);
ALTER TABLE authusergrouprole
    ADD CONSTRAINT authusergrouprole_rln_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename);



ALTER TABLE authuserprofileattrroles
    ADD CONSTRAINT authuserprofileattrroles_fkey FOREIGN KEY (username) REFERENCES authuserprofiles(username);

ALTER TABLE authuserprofilesearch
    ADD CONSTRAINT authuserprofilesearch_fkey FOREIGN KEY (username) REFERENCES authuserprofiles(username);


ALTER TABLE dataobjectattributeroles
    ADD CONSTRAINT contentattrroles_contid_fkey FOREIGN KEY (dataid) REFERENCES dataobjects(dataid);


ALTER TABLE dataobjectsearch
    ADD CONSTRAINT dataobjectsearch_contid_fkey FOREIGN KEY (dataid) REFERENCES dataobjects(dataid);
