--DROP USER projectname_schema CASCADE;
CREATE USER projectname_schema IDENTIFIED BY projectname_schema;
GRANT CONNECT TO projectname_schema;
GRANT RESOURCE TO projectname_schema;
GRANT UNLIMITED TABLESPACE TO projectname_schema;
