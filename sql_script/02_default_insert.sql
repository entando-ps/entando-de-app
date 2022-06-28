INSERT INTO categories (catcode,parentcode,titles) VALUES ('home','home','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Generale</property>
<property key="en">Root</property>
</properties>

');

INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10003,'BNR','Banner - Text, Image, CTA','
    <article class="banner-container #if ($content.placement.text == "RIGHT") reverse #end">
      #if ( $content.image.getImagePath("0") != "" )
        <div class="banner-image">
            <img src="$content.image.getImagePath("0")" alt="$content.image.text">
        </div>
      #end
      <div class="banner-abstract">
          <div>
              <h1>$content.title.text</h1>
              #if ( $content.abstract.text != "" )
                <p>$content.abstract.text</p>
              #end
              #if ( $content.link.destination != "" )
                <a class="bx--btn bx--btn--primary" href="$content.link.destination">$content.link.text</a>
              #end
          </div>
      </div>
    </article>
  ','ootb/content-templates/ct-banner.css');
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10023,'BNR','Banner - Search Results','<article class="search-result-container #if ($content.direction.text == "HORIZONTAL") horizontal #end">
    <div class="search-result-box">
        <div class="search-result-title">
		    ENTANDO
	    </div>
	    <h2 class="search-result-content-title">$content.title.text</h2>
        #if ( $content.abstract.text != "" )
        <div class="search-result-content-text">$content.abstract.text</div>
        #end
    </div>
</article>','ootb/content-templates/ct-search-results.css');
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10002,'NWS','News - Detail','<article class="news-container details">
    #if ( $content.image.getImagePath("0") != "" )
      <div class="news-image">
          <img src="$content.image.getImagePath("0")" alt="$content.image.text">
      </div>
    #end
    <div class="news-body">
        <div>
            #if ( $content.category.text != "" )
              <h3 class="news-category">$content.category.text</h3>
            #end
            <time class="news-date" datetime="$content.date.shortDate">$content.date.getFormattedDate("dd MMMM yyyy")</time>
            <h1 class="news-title">$content.title.text</h1>
            <p>$content.body.text</p>
            #if ( $content.link.destination != "" )
              <a class="bx--btn bx--btn--primary" href="$content.link.destination">$content.link.text</a>
            #end
        </div>
    </div>
</article>','ootb/content-templates/ct-news.css');
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10020,'NWS','News List Bullet','<li>
    <a href="$content.getContentLink()">$content.title.text</a>
</li>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10021,'NWS','News - List Item','<article class="news-container #if ($content.direction.text == "HORIZONTAL") horizontal #end">
    #if ( $content.image.getImagePath("0") != "" )
      <div class="news-image">
          <img src="$content.image.getImagePath("0")" alt="$content.image.text">
      </div>
    #end
    <div class="news-abstract">
        <div>
            #if ( $content.category.text != "" )
              <h3 class="news-category">$content.category.text</h3>
            #end
            <time class="news-date" datetime="$content.date.shortDate">$content.date.getFormattedDate("dd MMMM yyyy")</time>
            <h1 class="news-title"><a href="$content.getContentLink()">$content.title.text</a></h1>
            #if ( $content.abstract.text != "" )
              <p>$content.abstract.text</p>
            #end
            #if ( $content.link.destination != "" )
              <a class="bx--btn bx--btn--primary" href="$content.link.destination">$content.link.text</a>
            #end
        </div>
    </div>
</article>','ootb/content-templates/ct-news.css');
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10022,'NWS','News - Search Results','<article class="search-result-container #if ($content.direction.text == "HORIZONTAL") horizontal #end">
    <div class="search-result-box">
        <div class="search-result-title">
		    NEWS#if ( $content.category.text != "" ) - $content.category.text#end
	    </div>
	    <h2 class="search-result-content-title"><a href="$content.getContentLink()">$content.title.text</a></h2>
        #if ( $content.abstract.text != "" )
        <div class="search-result-content-text">$content.abstract.text</div>
        #end
        <time class="search-result-date" datetime="$content.date.shortDate">$content.date.getFormattedDate("dd MMMM yyyy")</time>
    </div>
</article>','ootb/content-templates/ct-search-results.css');
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10004,'TCL','2-column-content','<article class="tcol-content">
    #if ( $content.image.getImagePath("0") != "" )
      <img class="tcol-content-image" src="$content.image.getImagePath("0")" alt="$content.image.text">
    #end
    <div class="tcol-content-main">
      <div class="tcol-content-headings">
        <div>
          <h1 class="tcol-content-title">$content.title.text</h1>
          #if ( $content.subtitle.text != "" )
            <h2 class="tcol-content-subtitle">$content.subtitle.text</h2>
          #end
        </div>
        <div></div>
      </div>
      <div class="tcol-content-paragraphs">
        <div class="tcol-content-pcontainer">
          $content.col1.text
        </div>
        <div class="tcol-content-pcontainer">
          $content.col2.text
        </div>
      </div>
    </div>
  </article>','ootb/content-templates/ct-2-col.css');
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10024,'TCL','TCL - Search Results','<article class="search-result-container #if ($content.direction.text == "HORIZONTAL") horizontal #end">
    <div class="search-result-box">
        <div class="search-result-title">
		    ENTANDO
	    </div>
	    <h2 class="search-result-content-title">$content.title.text</h2>
        #if ( $content.col1.text != "" )
        <div class="search-result-content-text">$content.col1.text</div>
        #end
        #if ( $content.col2.text != "" )
        <div class="search-result-content-text">$content.col2.text</div>
        #end
    </div>
</article>','ootb/content-templates/ct-search-results.css');


INSERT INTO pages (code,parentcode,pos) VALUES ('service','homepage',1);
INSERT INTO pages (code,parentcode,pos) VALUES ('login','service',3);
INSERT INTO pages (code,parentcode,pos) VALUES ('notfound','service',1);
INSERT INTO pages (code,parentcode,pos) VALUES ('errorpage','service',2);
INSERT INTO pages (code,parentcode,pos) VALUES ('homepage','homepage',-1);
INSERT INTO pages (code,parentcode,pos) VALUES ('my_homepage','homepage',3);
INSERT INTO pages (code,parentcode,pos) VALUES ('sitemap','homepage',4);
INSERT INTO pages (code,parentcode,pos) VALUES ('search_result','homepage',5);
INSERT INTO pages (code,parentcode,pos) VALUES ('about_us','my_homepage',1);
INSERT INTO pages (code,parentcode,pos) VALUES ('news','my_homepage',2);


INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','langs','Definition of the system languages','<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>true</default>
	</Lang>
</Langs>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','userProfileTypes','User Profile Types Definitions','<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Default user profile">
		<attributes>
			<attribute name="fullname" attributetype="Monotext" description="Full Name" searchable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:fullname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Email" description="Email" searchable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:email</role>
				</roles>
			</attribute>
			<attribute name="profilepicture" attributetype="Monotext" description="Profile Picture" >
                <roles>
                    <role>userprofile:profilepicture</role>
                </roles>
            </attribute>
		</attributes>
	</profiletype>
</profiletypes>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataTypeDefinitions','Definition of the Type Types','<datatypes />');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataobjectsubdir','Name of the sub-directory containing dataobject indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','imageDimensions','Definition of the resized image dimensions','<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>130</dimx>
		<dimy>130</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>150</dimx>
		<dimy>150</dimy>
	</Dimension>
</Dimensions>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jacms_resourceMetadataMapping','Mapping between resource Metadata and resource attribute fields','<mapping>
    <field key="alt"></field>
    <field key="description"></field>
    <field key="legend"></field>
    <field key="title"></field>
</mapping>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','subIndexDir','Name of the sub-directory containing content indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpmail_config','Configurazione del servizio di invio eMail','<?xml version="1.0" encoding="UTF-8"?>
<mailConfig>
	<senders>
		<sender code="CODE1">EMAIL1@EMAIL.COM</sender>
		<sender code="CODE2">EMAIL2@EMAIL.COM</sender>
	</senders>
	<smtp debug="false">
		<host>localhost</host>
		<port>25000</port>
		<user></user>
		<password></password>
		<security>std</security>
	</smtp>
</mailConfig>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','contentTypes','Definition of the Content Types',TO_CLOB('<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="BNR" typedescr="Banner" viewpage="**NULL**" listmodel="10023" defaultmodel="10003">
		<attributes>
			<attribute name="title" attributetype="Text" description="Title" indexingtype="TEXT">
				<names>
					<properties>
						<property key="en">title</property>
					</properties>
				</names>
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="abstract" attributetype="Hypertext" description="Abstract" indexingtype="TEXT">
				<names>
					<properties>
						<property key="en">abstract</property>
					</properties>
				</names>
			</attribute>
			<attribute name="link" attributetype="Link" description="Link">
				<names>
					<properties>
						<property key="en">link</property>
					</properties>
				</names>
			</attribute>
			<attribute name="image" attributetype="Image" description="Image">
				<names>
					<properties>
						<property key="en">image</property>
					</properties>
				</names>
			</attribute>
			<attribute name="placement" attributetype="Enumerator" description="Image Placement" separator=",">
				<names>
					<properties>
						<property key="en">placement</property>
					</properties>
				</names>
				<![CDATA[LEFT,RIGHT]]>
			</attribute>
		</attributes>
	</contenttype>
	<contenttype typecode="NWS" typedescr="News" viewpage="news" listmodel="10022" defaultmodel="10002">
		<attributes>
			<attribute name="date" attributetype="Date" searchable="true">
				<names>
					<properties>
						<property key="en">date</property>
					</properties>
				</names>
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="title" attributetype="Text" searchable="true" indexingtype="TEXT">
				<names>
					<properties>
						<property key="en">title</property>
					</proper')||TO_CLOB('ties>
				</names>
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="abstract" attributetype="Hypertext" indexingtype="TEXT">
				<names>
					<properties>
						<property key="en">abstract</property>
					</properties>
				</names>
			</attribute>
			<attribute name="body" attributetype="Hypertext" description="Main Body" indexingtype="TEXT">
				<names>
					<properties>
						<property key="en">body</property>
					</properties>
				</names>
			</attribute>
			<attribute name="image" attributetype="Image">
				<names>
					<properties>
						<property key="en">image</property>
					</properties>
				</names>
			</attribute>
			<attribute name="link" attributetype="Link" description="Link">
				<names>
					<properties>
						<property key="en">link</property>
					</properties>
				</names>
			</attribute>
			<attribute name="category" attributetype="Text" indexingtype="TEXT">
				<names>
					<properties>
						<property key="en">category</property>
					</properties>
				</names>
			</attribute>
			<attribute name="direction" attributetype="Enumerator" description="Direction or orientation of the content" separator=",">
				<names>
					<properties>
						<property key="en">direction</property>
					</properties>
				</names>
				<![CDATA[VERTICAL,HORIZONTAL]]>
			</attribute>
		</attributes>
	</contenttype>
	<contenttype typecode="TCL" typedescr="2 columns" viewpage="**NULL**" listmodel="10024" defaultmodel="10004">
		<attributes>
			<attribute name="image" attributetype="Image" description="Image" />
			<attribute name="title" attributetype="Text" description="Title" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="subtitle" attributetype="Hy')||TO_CLOB('pertext" description="Subtitle" indexingtype="TEXT" />
			<attribute name="col1" attributetype="Hypertext" description="Column 1 content" indexingtype="TEXT" />
			<attribute name="col2" attributetype="Hypertext" description="Column 2 content" indexingtype="TEXT" />
		</attributes>
	</contenttype>
</contenttypes>

'));
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','entandoComponentsReport','The component installation report',TO_CLOB('<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2022-06-24 08:00:28</creation>
	<lastupdate>2022-06-24 08:00:36</lastupdate>
	<components>
		<component code="entandoCore" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="sysconfig" />
					<table name="categories" />
					<table name="localstrings" />
					<table name="pagemodels" />
					<table name="pages" />
					<table name="pages_metadata_online" />
					<table name="pages_metadata_draft" />
					<table name="widgetcatalog" />
					<table name="guifragment" />
					<table name="widgetconfig" />
					<table name="widgetconfig_draft" />
					<table name="uniquekeys" />
					<table name="userpreferences" />
				</datasource>
				<datasource name="servDataSource" status="OK">
					<table name="authgroups" />
					<table name="authpermissions" />
					<table name="authroles" />
					<table name="authrolepermissions" />
					<table name="authusers" />
					<table name="authusergrouprole" />
					<table name="api_oauth_consumers" />
					<table name="api_oauth_tokens" />
					<table name="apicatalog_methods" />
					<table name="apicatalog_services" />
					<table name="authuserprofiles" />
					<table name="authuserprofilesearch" />
					<table name="authuserprofileattrroles" />
					<table name="actionlogrecords" />
					<table name="actionlogrelations" />
					<table name="actionloglikerecords" />
					<table name="actionlogcommentrecords" />
					<table name="dataobjectmodels" />
					<table name="dataobjects" />
					<table name="dataobjectrelations" />
					<table name="dataobjectsearch" />
					<table name="dataobjectattributeroles" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="OK" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</compone')||TO_CLOB('nt>
		<component code="jacms" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="contentmodels" />
					<table name="contents" />
					<table name="resources" />
					<table name="resourcerelations" />
					<table name="contentrelations" />
					<table name="contentsearch" />
					<table name="contentattributeroles" />
					<table name="workcontentrelations" />
					<table name="workcontentsearch" />
					<table name="workcontentattributeroles" />
				</datasource>
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpmail" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-admin-console" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="authusershortcuts" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-portal-ui" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datas')||TO_CLOB('ource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="defaultResources" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="OK" />
		</component>
		<component code="jpversioning" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="jpversioning_versionedcontents" />
					<table name="jpversioning_trashedresources" />
				</datasource>
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpredis" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpseo" date="2022-06-24 08:00:28" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="jpseo_friendlycode" />
				</datasource>
				<dataso')||TO_CLOB('urce name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>

'));
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','params','Configuration params.','<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">classic</Param>
	<Param name="hypertextEditor">none</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<Param name="firstTimeMessages">false</Param>
	<Param name="baseUrl">request</Param>
	<Param name="baseUrlContext">true</Param>
	<Param name="useJsessionId">false</Param>
	<Param name="gravatarIntegrationEnabled">false</Param>
	<Param name="editEmptyFragmentEnabled">false</Param>
	<Param name="argon2">true</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<FeaturesOnDemand>
		<Param name="groupsOnDemand">true</Param>
		<Param name="categoriesOnDemand">true</Param>
		<Param name="contentTypesOnDemand">true</Param>
		<Param name="contentModelsOnDemand">true</Param>
		<Param name="apisOnDemand">true</Param>
		<Param name="resourceArchivesOnDemand">true</Param>
	</FeaturesOnDemand>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>
	</ExtendendPrivacyModule>
	<ExtraParams>
		<Param name="page_preview_hash">aacsuhpStN3D3rOUgviB</Param>
	</ExtraParams>
</Params>

');


INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('service','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagine di Servizio</property>
<property key="en">Service</property>
</properties>','single_frame_page',0,NULL,TO_DATE('2017-02-17 13:06:24','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('login','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagina di login</property>
<property key="en">Login</property>
</properties>','single_frame_page',1,NULL,TO_DATE('2017-02-17 15:32:34','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('notfound','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>','single_frame_page',1,NULL,TO_DATE('2017-02-17 16:37:10','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('errorpage','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Error page</property>
<property key="it">Pagina di errore</property>
</properties>','single_frame_page',1,NULL,TO_DATE('2017-02-17 21:11:54','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('homepage','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>','home',1,NULL,TO_DATE('2017-02-18 00:12:24','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('my_homepage','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">My Homepage</property>
<property key="it">My Homepage</property>
</properties>','1-column',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf8</charset>
  <mimeType>text/html</mimeType>
</config>',TO_DATE('2020-07-31 10:22:15','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('sitemap','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sitemap</property>
<property key="it">Sitemap</property>
</properties>','1-column',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
</config>',TO_DATE('2020-06-08 08:43:13','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('search_result','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Result</property>
<property key="it">Risultati della Ricerca</property>
</properties>','1-column',0,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
</config>',TO_DATE('2020-06-08 08:43:13','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('about_us','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">About Us</property>
<property key="it">Chi Siamo</property>
</properties>','1-column',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
</config>',TO_DATE('2020-06-08 08:43:13','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('news','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">News</property>
</properties>','content-page',0,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
  <useextradescriptions>false</useextradescriptions>
  <descriptions>
    <property key="en" useDefaultLang="false">News</property>
    <property key="it" useDefaultLang="false">News</property>
  </descriptions>
  <keywords>
    <property key="en" useDefaultLang="false">News</property>
    <property key="it" useDefaultLang="false">News</property>
  </keywords>
  <complexParameters />
</config>

',TO_DATE('2020-11-16 16:23:44','YYYY-MM-DD HH24:MI:SS'));

INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',0,'logo',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',2,'search_form',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',3,'keycloak-login',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',4,'content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentDescription">A Modern Platform for Modern UX</property>
<property key="contentId">BNR3</property>
<property key="joinGroups">()</property>
<property key="modelId">10003</property>
<property key="ownerGroup">free</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',5,'content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
    <property key="modelId">10021</property>
    <property key="maxElemForItem">5</property>
    <property key="contentType">NWS</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',0,'logo',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',2,'search_form',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',3,'keycloak-login',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',4,'sitemap',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('search_result',0,'logo',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('search_result',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('search_result',2,'search_form',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('search_result',3,'keycloak-login',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('search_result',4,'search_result',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('search_result',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('about_us',0,'logo',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('about_us',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('about_us',2,'search_form',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('about_us',3,'keycloak-login',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('about_us',4,'content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentDescription">Sample - About Us</property>
<property key="ownerGroup">free</property>
<property key="contentId">TCL6</property>
<property key="joinGroups">[]</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('about_us',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('news',0,'logo',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('news',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('news',2,'search_form',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('news',3,'keycloak-login',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('news',4,'content_viewer',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('news',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');


INSERT INTO resources (resid,restype,descr,maingroup,resourcexml,masterfilename,creationdate,lastmodified,owner,folderpath,correlationcode) VALUES ('entandoAtPlan','Image','Entando at Plan','free','<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="entandoAtPlan"><descr>Entando at Plan</descr><groups mainGroup="free" /><categories /><masterfile>entando_at_plan.jpg</masterfile><metadata-list><metadata id="Resolution Units">inch</metadata><metadata id="Number of Tables">4 Huffman tables</metadata><metadata id="Detected File Type Long Name">Joint Photographic Experts Group</metadata><metadata id="File Modified Date">Fri Jun 24 08:00:34 +00:00 2022</metadata><metadata id="Compression Type">Baseline</metadata><metadata id="Data Precision">8 bits</metadata><metadata id="Detected MIME Type">image/jpeg</metadata><metadata id="Expected File Name Extension">jpg</metadata><metadata id="Number of Components">3</metadata><metadata id="Component 2">Cb component: Quantization table 1, Sampling factors 1 horiz/1 vert</metadata><metadata id="Thumbnail Height Pixels">0</metadata><metadata id="Component 1">Y component: Quantization table 0, Sampling factors 1 horiz/1 vert</metadata><metadata id="Image Height">625 pixels</metadata><metadata id="Thumbnail Width Pixels">0</metadata><metadata id="X Resolution">72 dots</metadata><metadata id="Image Width">1000 pixels</metadata><metadata id="File Size">321214 bytes</metadata><metadata id="Component 3">Cr component: Quantization table 1, Sampling factors 1 horiz/1 vert</metadata><metadata id="Version">1.2</metadata><metadata id="Detected File Type Name">JPEG</metadata><metadata id="File Name">entando_at_plan_d0.jpg</metadata><metadata id="Y Resolution">72 dots</metadata></metadata-list><instance><size>0</size><filename>entando_at_plan_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>321 Kb</weight></instance><instance><size>1</size><filename>entando_at_plan_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>2</size><filename>entando_at_plan_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>3</size><filename>entando_at_plan_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance></resource>
','entando_at_plan.jpg',TO_DATE('2022-06-24 08:00:34','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2022-06-24 08:00:34','YYYY-MM-DD HH24:MI:SS'),NULL,NULL,'entandoAtPlan');
INSERT INTO resources (resid,restype,descr,maingroup,resourcexml,masterfilename,creationdate,lastmodified,owner,folderpath,correlationcode) VALUES ('entandoAtWork','Image','Entando at Work','free','<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="entandoAtWork"><descr>Entando at Work</descr><groups mainGroup="free" /><categories /><masterfile>entando_at_work.jpg</masterfile><metadata-list><metadata id="Resolution Units">inch</metadata><metadata id="Number of Tables">4 Huffman tables</metadata><metadata id="Detected File Type Long Name">Joint Photographic Experts Group</metadata><metadata id="File Modified Date">Fri Jun 24 08:00:35 +00:00 2022</metadata><metadata id="Compression Type">Baseline</metadata><metadata id="Data Precision">8 bits</metadata><metadata id="Detected MIME Type">image/jpeg</metadata><metadata id="Expected File Name Extension">jpg</metadata><metadata id="Number of Components">3</metadata><metadata id="Component 2">Cb component: Quantization table 1, Sampling factors 1 horiz/1 vert</metadata><metadata id="Thumbnail Height Pixels">0</metadata><metadata id="Component 1">Y component: Quantization table 0, Sampling factors 1 horiz/1 vert</metadata><metadata id="Image Height">625 pixels</metadata><metadata id="Thumbnail Width Pixels">0</metadata><metadata id="X Resolution">72 dots</metadata><metadata id="Image Width">1000 pixels</metadata><metadata id="File Size">356355 bytes</metadata><metadata id="Component 3">Cr component: Quantization table 1, Sampling factors 1 horiz/1 vert</metadata><metadata id="Version">1.2</metadata><metadata id="Detected File Type Name">JPEG</metadata><metadata id="File Name">entando_at_work_d0.jpg</metadata><metadata id="Y Resolution">72 dots</metadata></metadata-list><instance><size>0</size><filename>entando_at_work_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>356 Kb</weight></instance><instance><size>1</size><filename>entando_at_work_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>2</size><filename>entando_at_work_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>3</size><filename>entando_at_work_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance></resource>
','entando_at_work.jpg',TO_DATE('2022-06-24 08:00:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2022-06-24 08:00:35','YYYY-MM-DD HH24:MI:SS'),NULL,NULL,'entandoAtWork');
INSERT INTO resources (resid,restype,descr,maingroup,resourcexml,masterfilename,creationdate,lastmodified,owner,folderpath,correlationcode) VALUES ('htmlCode','Image','HTML Code','free','<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="htmlCode"><descr>HTML Code</descr><groups mainGroup="free" /><categories /><masterfile>html_code.jpg</masterfile><metadata-list><metadata id="Resolution Units">inch</metadata><metadata id="Number of Tables">4 Huffman tables</metadata><metadata id="Detected File Type Long Name">Joint Photographic Experts Group</metadata><metadata id="File Modified Date">Fri Jun 24 08:00:35 +00:00 2022</metadata><metadata id="Compression Type">Baseline</metadata><metadata id="Data Precision">8 bits</metadata><metadata id="Detected MIME Type">image/jpeg</metadata><metadata id="Expected File Name Extension">jpg</metadata><metadata id="Number of Components">3</metadata><metadata id="Component 2">Cb component: Quantization table 1, Sampling factors 1 horiz/1 vert</metadata><metadata id="Thumbnail Height Pixels">0</metadata><metadata id="Component 1">Y component: Quantization table 0, Sampling factors 1 horiz/1 vert</metadata><metadata id="Image Height">625 pixels</metadata><metadata id="Thumbnail Width Pixels">0</metadata><metadata id="X Resolution">72 dots</metadata><metadata id="Image Width">1000 pixels</metadata><metadata id="File Size">529361 bytes</metadata><metadata id="Component 3">Cr component: Quantization table 1, Sampling factors 1 horiz/1 vert</metadata><metadata id="Version">1.1</metadata><metadata id="Detected File Type Name">JPEG</metadata><metadata id="File Name">html_code_d0.jpg</metadata><metadata id="Y Resolution">72 dots</metadata></metadata-list><instance><size>0</size><filename>html_code_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>529 Kb</weight></instance><instance><size>1</size><filename>html_code_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>2</size><filename>html_code_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>3</size><filename>html_code_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance></resource>
','html_code.jpg',TO_DATE('2022-06-24 08:00:35','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2022-06-24 08:00:35','YYYY-MM-DD HH24:MI:SS'),NULL,NULL,'htmlCode');


INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGE','en','page');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGE','it','pagina');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGE_MODEL','en','page template');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGE_MODEL','it','modello pagina');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGE_TITLE','en','page title');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGE_TITLE','it','titolo pagina');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('RESERVED_AREA','en','Please sign in');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('RESERVED_AREA','it','È necessario autenticarsi');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USERNAME','en','Username');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USERNAME','it','Utente');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PASSWORD','en','Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PASSWORD','it','Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SIGNIN','en','Sign in');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SIGNIN','it','Entra');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('WELCOME','en','Welcome');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('WELCOME','it','Benvenuto');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USER_DATE_CREATION','en','Creation date');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USER_DATE_CREATION','it','Data creazione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USER_DATE_ACCESS_LAST','en','Last access');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USER_DATE_ACCESS_LAST','it','Ultimo accesso');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USER_DATE_PASSWORD_CHANGE_LAST','en','Last change');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USER_DATE_PASSWORD_CHANGE_LAST','it','Ultimo cambio password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('LOGOUT','en','Logout');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('LOGOUT','it','Logout');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USER_NOT_ALLOWED','en','User not allowed');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('USER_NOT_ALLOWED','it','Utente non autorizzato');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGE_NOT_FOUND','en','Page not found');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGE_NOT_FOUND','it','Pagina non trovata');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('GENERIC_ERROR','en','Generic Error');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('GENERIC_ERROR','it','Errore Generico');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ADMINISTRATION_BASIC','it','Normale');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ADMINISTRATION_BASIC','en','Normal');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ADMINISTRATION_MINT','it','Avanzata');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ADMINISTRATION_MINT','en','Advanced');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ADMINISTRATION_BASIC_GOTO','it','Accedi con client normale');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ADMINISTRATION_BASIC_GOTO','en','Go to the administration with normal client');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ADMINISTRATION_MINT_GOTO','it','Accedi con client avanzato');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ADMINISTRATION_MINT_GOTO','en','Go to the administration with advanced client');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('DATE_FROM','en','From');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('DATE_FROM','it','Da');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('DATE_TO','en','To');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('DATE_TO','it','A');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('TEXT','en','Text');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('TEXT','it','Testo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ALL','en','All');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ALL','it','Tutte');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NUMBER_FROM','en','From');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NUMBER_FROM','it','Da');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NUMBER_TO','en','To');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NUMBER_TO','it','A');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCES','it','Risorse API');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCES','en','API Resources');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_ERROR','it','Errore');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_ERROR','en','Errors');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE','it','Risorsa');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE','en','Resource');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_DESCRIPTION','it','Descrizione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_DESCRIPTION','en','Description');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_GOTO_DETAILS','it','Vai al dettaglio');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_GOTO_DETAILS','en','Go to details');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_GOTO_SERVICE_LIST','it','Elenco Servizi API');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_GOTO_SERVICE_LIST','en','Service List');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE','it','Servizio');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE','en','Service');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_OFF','it','Non Attivo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_OFF','en','Not Active');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_FREE','it','Attivo, Accesso Libero');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_FREE','en','Active, Free Access');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_AUTH','it','Attivo, Utenti Registrati');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_AUTH','en','Active, Registered Users');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_LOCK','it','Metodo Attivo, Utenti Registrati con Autorizzazione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_LOCK','en','Active, Registered Users with Permission');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_NA','it','Metodo Non Disponibile');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_NA','en','Method Not Available');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_NO_RESOURCES','it','Non ci sono Risorse API disponibili.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_NO_RESOURCES','en','No API Resources available at the moment.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_TABLE_SUMMARY','it','La tabella elenaca le Risorse API disponibile nel sistema. Nome della risorsa, la sua descrizione e lo stato di ciascun metodo.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_TABLE_SUMMARY','en','The table lists the API Resources available in the system. Method name, description, group and the status of each method.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAME','it','Nome');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAME','en','Name');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAMESPACE','it','Namespace');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAMESPACE','en','Namespace');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE_SOURCE','it','Sorgente');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE_SOURCE','en','Source');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE_URI','it','URI');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_RESOURCE_URI','en','URI');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_EXTENSION','it','Estensione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_EXTENSION','en','Extension');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_EXTENSION_NOTE','it','''.xml'' per la risposta in formato xml e ''.json'' per la risposta in formato json.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_EXTENSION_NOTE','en','''.xml'' for response in xml format and ''.json'' for json.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_KO','it','Non disponibile');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_KO','en','Not available');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD','it','Metodo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD','en','Method');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_OK','it','Disponibile');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_OK','en','Available');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_AUTHORIZATION','it','Autorizzazione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_AUTHORIZATION','en','Authorization');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_FREE','it','Nessuna, questo metodo è pubblico');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_FREE','en','None, this method is public');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_WITH_PERM','it','Utenti registrati con permesso');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_WITH_PERM','en','Registered users with permission');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_SIMPLE','it','Utenti registrati');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_SIMPLE','en','Registered users');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMAS','it','Schema XML');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMAS','en','XML Schemas');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_REQ','it','Richiesta');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_REQ','en','Request');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_RESP','it','Risposta');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_RESP','en','Response');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTHORIZATION','it','Autorizzazione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_FREE','en','Free');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_PARAMS_SUMM','it','Questa tabella mostra i parametri per la richiesta del metodo. Per ciascuno di essi ci sono tre colonne: il nome del parametro, la descrizione del parametro e l''indicazione di obbligatorietà.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_PARAMS_SUMM','en','This table shows the request parameters for this method. For each of them there are three columns: the parameter name, the parameter description and whether if it''s mandatory or not.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_REQUEST_PARAMS','it','Parametri');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_METHOD_REQUEST_PARAMS','en','Parameters');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_PARAM_NAME','it','Nome');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_PARAM_NAME','en','Name');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_PARAM_DESCRIPTION','it','Descrizione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_PARAM_DESCRIPTION','en','Description');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_PARAM_REQUIRED','it','Obbligatorio');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_PARAM_REQUIRED','en','Mandatory');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('YES','it','Si');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('YES','en','Yes');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NO','it','No');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NO','en','No');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('BOTH','it','Entrambi');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('BOTH','en','Both');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_GOTO_LIST','it','Lista delle Risorse API');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_GOTO_LIST','en','API Resource List');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_PREV','it','Indietro');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_PREV','en','Previous');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_NEXT','it','Ancora');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_NEXT','en','Next');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_FIRST','it','Inizio');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_FIRST','en','Start');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_LAST','it','Fine');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_LAST','en','End');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_STEP_BACKWARD','it','Indietro di');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_STEP_BACKWARD','en','Previous');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_STEP_FORWARD','it','Avanti di');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('PAGER_STEP_FORWARD','en','Next');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('CATEGORY','it','Categoria');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('CATEGORY','en','Category');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('IGNORE','it','Ignora');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('IGNORE','en','Ignore');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ERRORS','it','Oops! Hai sbagliato qualcosa!');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ERRORS','en','Whoops! You''re doing it wrong!');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_CONFIGURATION','it','Configura il profile');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_CONFIGURATION','en','Edit profile');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_CONFIRM_NEWPASS','it','Conferma nuova password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_CONFIRM_NEWPASS','en','Confirm new password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_EDITPASSWORD','it','Modifica Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_EDITPASSWORD','en','Edit Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_EDITPASSWORD_TITLE','it','Modifica Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_EDITPASSWORD_TITLE','en','Edit Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_EDITPROFILE_TITLE','it','Modifica profilo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_EDITPROFILE_TITLE','en','Edit Profile');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_MOVEUP','it','Sposta su');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_MOVEUP','en','Move up');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_MOVEUP_IN','it','Sposta su in posizione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_MOVEUP_IN','en','Move at position');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN','it','Sposta giu');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN','en','Move down');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN_IN','it','Sposta giu in posizione');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN_IN','en','Move down at position');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_REMOVE','it','Rimuovi dalla lista');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ITEM_REMOVE','en','Remove from list');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_MESSAGE_TITLE_FIELDERRORS','it','Attenzione, si sono verificati i seguenti errori nella compilazione del modulo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_MESSAGE_TITLE_FIELDERRORS','en','Warning, please check the module');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_NEWPASS','it','Nuova password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_NEWPASS','en','New password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_OLDPASSWORD','it','Vecchia password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_OLDPASSWORD','en','Old password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PASSWORD_UPDATED','it','La password è stata aggiornata correttamente.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PASSWORD_UPDATED','en','Your password updated successfully.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PLEASE_LOGIN','it','E'' necessario effettuare l''accesso');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PLEASE_LOGIN','en','Please login');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PLEASE_LOGIN_AGAIN','it','E'' necessario riloggarsi.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PLEASE_LOGIN_AGAIN','en','Please logout and login again.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD','it','E'' necessario effettuare l''accesso per cambiare la password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD','en','Please login in order to change your password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PROFILE_UPDATED','it','Profilo aggiornato correttamente.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_PROFILE_UPDATED','en','Your profile is now updated.');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_SAVE_PASSWORD','it','Salva password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_SAVE_PASSWORD','en','Save password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_SAVE_PROFILE','it','Salva il profilo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_SAVE_PROFILE','en','Save profile');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ADDITEM_LIST','it','Aggiungi nuovo elemento alla lista');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ADDITEM_LIST','en','Add an element to the list');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_YES','it','Si');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_YES','en','Yes');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_NO','it','No');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_NO','en','No');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_BOTH_YES_AND_NO','it','Indifferente');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_BOTH_YES_AND_NO','en','Both');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT','it','*');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT','en','*');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL','it','Obbligatorio');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL','en','Mandatory');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT','it','Min');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT','en','Min');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL','it','Lunghezza Minima');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL','en','Minimum length');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT','it','Max');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT','en','Max');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL','it','Lunghezza Massima');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL','en','Maximum length');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_CURRENT_USER_WITHOUT_PROFILE','it','Utente corrente senza profilo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('userprofile_CURRENT_USER_WITHOUT_PROFILE','en','Current user without profile');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_KEY','en','Key');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_KEY','it','Id');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_PARENT_API','en','Parent API');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_PARENT_API','it','API Padre');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTHORIZATION','en','Authorization');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_FREE','it','Accesso Libero');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_URI','en','URI');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_URI','it','URI');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS','en','Parameters');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS','it','Parametri');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_BACK_TO_EDIT_CONTENT','en','Back to edit content');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_BACK_TO_EDIT_CONTENT','it','Torna alla modifica dei contenuti');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_CONTENT_PREVIEW','en','Content preview');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_CONTENT_PREVIEW','it','Anteprima contenuto');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESSF_SEARCH','en','Search');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESSF_SEARCH','it','Cerca');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH','en','Search');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH','it','Cerca');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_FILTERS_BUTTON','en','Narrow your search');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_FILTERS_BUTTON','it','Filtra ulteriormente');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('LIST_VIEWER_EMPTY','en','No result found. Broaden your search and try again!');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('LIST_VIEWER_EMPTY','it','Nessun risultato trovato. Imposta dei parametri meno stringenti e prova ancora!');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_LIST_VIEWER_FIELD','en','The value for field');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_LIST_VIEWER_FIELD','it','Il valore del campo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_FORMAT','en','is invalid');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_FORMAT','it','non è corretto');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_RANGE','en','generates an invalid range');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_RANGE','it','genera un range non valido');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('EDIT_THIS_CONTENT','en','Edit');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('EDIT_THIS_CONTENT','it','Modifica');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_RESULTS','en','Search Result');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_RESULTS','it','Risultati della Ricerca');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCHED_FOR','en','You searched for');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCHED_FOR','it','Hai cercato');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_NOTHING_FOUND','en','No result found. Try another search term!');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_NOTHING_FOUND','it','Nessun risultato trovato. Prova a cercare un altro termine!');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_RESULTS_INTRO','en','Found');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_RESULTS_INTRO','it','Sono stati trovati');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_RESULTS_OUTRO','en','results. Showing:');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('SEARCH_RESULTS_OUTRO','it','risultati. Mostrati:');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_SEARCH_TEXT_ALL_WORDS','it','Tutte le parole');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_SEARCH_TEXT_ALL_WORDS','en','All words');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_SEARCH_TEXT_AT_LEAST_ONE_WORD','it','Almeno una parola');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_SEARCH_TEXT_AT_LEAST_ONE_WORD','en','At least one word');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_SEARCH_TEXT_EXACT','it','Frase esatta');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('jacms_SEARCH_TEXT_EXACT','en','Exact');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_SIGNOUT','en','Logout');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_SIGNOUT','it','Esci');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_PROFILE_CONFIGURATION','en','Profile Configuration');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_PROFILE_CONFIGURATION','it','Configurazione Profilo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_SIGNIN','en','Log in');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_SIGNIN','it','Entra');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_PASSWORD','en','Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_PASSWORD','it','Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USERNAME','en','Username');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USERNAME','it','Username');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USER_STATUS_CREDENTIALS_INVALID','en','Invalid credentials');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USER_STATUS_CREDENTIALS_INVALID','it','Invalid credentials');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USER_STATUS_EXPIRED','en','User expired');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USER_STATUS_EXPIRED','it','User expired');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESNB_YOU_ARE_HERE','en','You''re here');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESNB_YOU_ARE_HERE','it','Sei qui');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('CNG_ATTACHMENTS','en','Attachments');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('CNG_ATTACHMENTS','it','Allegati');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('CNG_LINKS','en','Links');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('CNG_LINKS','it','Link');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('CNG_READ_MORE','en','View details');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('CNG_READ_MORE','it','Continua');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NWS_ATTACHMENTS','en','Attachments');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NWS_ATTACHMENTS','it','Allegati');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NWS_LINKS','en','Links');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NWS_LINKS','it','Link');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NWS_READ_MORE','en','View details');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('NWS_READ_MORE','it','Continua');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('LANG_EN','en','English');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('LANG_EN','it','Inglese');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('LANG_IT','en','Italian');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('LANG_IT','it','Italiano');

INSERT INTO workcontentattributeroles (contentid,attrname,rolename) VALUES ('BNR2','title','jacms:title');
INSERT INTO workcontentattributeroles (contentid,attrname,rolename) VALUES ('BNR3','title','jacms:title');
INSERT INTO workcontentattributeroles (contentid,attrname,rolename) VALUES ('NWS4','title','jacms:title');
INSERT INTO workcontentattributeroles (contentid,attrname,rolename) VALUES ('NWS5','title','jacms:title');
INSERT INTO workcontentattributeroles (contentid,attrname,rolename) VALUES ('TCL6','title','jacms:title');

INSERT INTO uniquekeys (id,keyvalue) VALUES (1,6);

INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('single_frame_page','Single Frame Page','<frames>
	<frame pos="0">
		<descr>Sample Frame</descr>
		<sketch x1="0" y1="0" x2="11" y2="1" />
	</frame>
</frames>',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title><@wp.currentPage param="title" /></title>
</head>
<body>
<h1><@wp.currentPage param="title" /></h1>
<a href="<@wp.url page="homepage" />" >Home</a><br>
<div><@wp.show frame=0 /></div>
</body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('home','Home Page',NULL,NULL,NULL);
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('1-column','1 Column','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Logo</descr>
      <sketch x1="0" y1="0" x2="2" y2="0" />
      <defaultWidget code="logo" />
  </frame>
  <frame pos="1">
      <descr>Navigation bar</descr>
      <sketch x1="3" y1="0" x2="5" y2="0" />
      <defaultWidget code="navigation-menu" />
  </frame>
  <frame pos="2">
      <descr>Search</descr>
      <sketch x1="6" y1="0" x2="8" y2="0" />
      <defaultWidget code="search_form" />
  </frame>
  <frame pos="3">
      <descr>Login</descr>
      <sketch x1="9" y1="0" x2="11" y2="0" />
      <defaultWidget code="keycloak-login" />
  </frame>
  <frame pos="4" main="true">
      <descr>Frame 1</descr>
      <sketch x1="0" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="5">
      <descr>Frame 2</descr>
      <sketch x1="0" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="6">
      <descr>Frame 3</descr>
      <sketch x1="0" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="7">
      <descr>Frame 4</descr>
      <sketch x1="0" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="8">
      <descr>Footer</descr>
      <sketch x1="0" y1="5" x2="11" y2="5" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="systemParam" paramName="applicationBaseURL" var="appUrl" />

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="${appUrl}favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />
        <@wp.fragment code="keycloak_auth" escapeXml=false />

        <@wp.outputHeadInfo type="CSS">
            <link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
        </@wp.outputHeadInfo>
        </head>
        <body>
          <header-fragment app-url="${appUrl}">
            <template>
                <@wp.show frame=0 />
                <@wp.show frame=1 />
                <@wp.show frame=2 />
                <@wp.show frame=3 />
            </template>
          </header-fragment>
          <div class="bx--grid Homepage__body">
            <div class="bx--row"><@wp.show frame=4 /></div>
            <div class="bx--row"><@wp.show frame=5 /></div>
            <div class="bx--row"><@wp.show frame=6 /></div>
            <div class="bx--row"><@wp.show frame=7 /></div>
          </div>
          <div class="Homepage__footer"><@wp.show frame=8 /></div>
        </body>
</html>
');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('1-2x4-1-column','1-2x4-1 Columns','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Logo</descr>
      <sketch x1="0" y1="0" x2="2" y2="0" />
      <defaultWidget code="logo" />
  </frame>
  <frame pos="1">
      <descr>Navigation Menu</descr>
      <sketch x1="3" y1="0" x2="5" y2="0" />
      <defaultWidget code="navigation-menu" />
  </frame>
  <frame pos="2">
      <descr>Search</descr>
      <sketch x1="6" y1="0" x2="8" y2="0" />
      <defaultWidget code="search_form" />
  </frame>
  <frame pos="3">
      <descr>Login</descr>
      <sketch x1="9" y1="0" x2="11" y2="0" />
      <defaultWidget code="keycloak-login" />
  </frame>
  <frame pos="4">
      <descr>Frame 1</descr>
      <sketch x1="0" y1="1" x2="5" y2="1" />
  </frame>
  <frame pos="5">
      <descr>Frame 2</descr>
      <sketch x1="6" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="6">
      <descr>Frame 3</descr>
      <sketch x1="0" y1="2" x2="5" y2="2" />
  </frame>
  <frame pos="7">
      <descr>Frame 4</descr>
      <sketch x1="6" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="8">
      <descr>Frame 5</descr>
      <sketch x1="0" y1="3" x2="5" y2="3" />
  </frame>
  <frame pos="9">
      <descr>Frame 6</descr>
      <sketch x1="6" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="10">
      <descr>Frame 7</descr>
      <sketch x1="0" y1="4" x2="5" y2="4" />
  </frame>
  <frame pos="11">
      <descr>Frame 8</descr>
      <sketch x1="6" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="12">
      <descr>Footer</descr>
      <sketch x1="0" y1="5" x2="11" y2="5" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="systemParam" paramName="applicationBaseURL" var="appUrl" />

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="${appUrl}favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />
        <@wp.fragment code="keycloak_auth" escapeXml=false />

        <@wp.outputHeadInfo type="CSS">
            <link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
        </@wp.outputHeadInfo>
        </head>
        <body>
          <header-fragment app-url="${appUrl}">
            <template>
                <@wp.show frame=0 />
                <@wp.show frame=1 />
                <@wp.show frame=2 />
                <@wp.show frame=3 />
            </template>
          </header-fragment>
          <div class="bx--grid Homepage__body">
            <div class="bx--row">
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=4 /></div>
                  <div><@wp.show frame=6 /></div>
                  <div><@wp.show frame=8 /></div>
                  <div><@wp.show frame=10 /></div>
              </div>
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=5 /></div>
                  <div><@wp.show frame=7 /></div>
                  <div><@wp.show frame=9 /></div>
                  <div><@wp.show frame=11 /></div>
                </div>
            </div>
          </div>
          <div class="Homepage__footer"><@wp.show frame=12 /></div>
        </body>
</html>
');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('1-2-column','1-2 Columns','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Logo</descr>
      <sketch x1="0" y1="0" x2="2" y2="0" />
      <defaultWidget code="logo" />
  </frame>
  <frame pos="1">
      <descr>Navigation Menu</descr>
      <sketch x1="3" y1="0" x2="5" y2="0" />
      <defaultWidget code="navigation-menu" />
  </frame>
  <frame pos="2">
      <descr>Search</descr>
      <sketch x1="6" y1="0" x2="8" y2="0" />
      <defaultWidget code="search_form" />
  </frame>
  <frame pos="3">
      <descr>Login</descr>
      <sketch x1="9" y1="0" x2="11" y2="0" />
      <defaultWidget code="keycloak-login" />
  </frame>
  <frame pos="4">
      <descr>Frame 1</descr>
      <sketch x1="0" y1="1" x2="5" y2="1" />
  </frame>
  <frame pos="5">
      <descr>Frame 2</descr>
      <sketch x1="6" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="6">
      <descr>Frame 3</descr>
      <sketch x1="0" y1="2" x2="5" y2="2" />
  </frame>
  <frame pos="7">
      <descr>Frame 4</descr>
      <sketch x1="6" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="8">
      <descr>Frame 5</descr>
      <sketch x1="0" y1="3" x2="5" y2="3" />
  </frame>
  <frame pos="9">
      <descr>Frame 6</descr>
      <sketch x1="6" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="10">
      <descr>Frame 7</descr>
      <sketch x1="0" y1="4" x2="5" y2="4" />
  </frame>
  <frame pos="11">
      <descr>Frame 8</descr>
      <sketch x1="6" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="12">
      <descr>Frame 9</descr>
      <sketch x1="0" y1="5" x2="5" y2="5" />
  </frame>
  <frame pos="13">
      <descr>Frame 10</descr>
      <sketch x1="6" y1="5" x2="11" y2="5" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="systemParam" paramName="applicationBaseURL" var="appUrl" />

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="${appUrl}favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />
        <@wp.fragment code="keycloak_auth" escapeXml=false />

        <@wp.outputHeadInfo type="CSS">
            <link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
        </@wp.outputHeadInfo>
        </head>
        <body>
          <header-fragment app-url="${appUrl}">
            <template>
                <@wp.show frame=0 />
                <@wp.show frame=1 />
                <@wp.show frame=2 />
                <@wp.show frame=3 />
            </template>
          </header-fragment>
          <div class="bx--grid Homepage__body">
            <div class="bx--row">
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=4 /></div>
                  <div><@wp.show frame=6 /></div>
                  <div><@wp.show frame=8 /></div>
                  <div><@wp.show frame=10 /></div>
                  <div><@wp.show frame=12/></div>
              </div>
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=5 /></div>
                  <div><@wp.show frame=7 /></div>
                  <div><@wp.show frame=9 /></div>
                  <div><@wp.show frame=11 /></div>
                  <div><@wp.show frame=13 /></div>
                </div>
            </div>
          </div>
        </body>
</html>
');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('1-2x2-1-column','1-2x2-1 Columns','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Logo</descr>
      <sketch x1="0" y1="0" x2="2" y2="0" />
      <defaultWidget code="logo" />
  </frame>
  <frame pos="1">
      <descr>Navigation Menu</descr>
      <sketch x1="3" y1="0" x2="5" y2="0" />
      <defaultWidget code="navigation-menu" />
  </frame>
  <frame pos="2">
      <descr>Search</descr>
      <sketch x1="6" y1="0" x2="8" y2="0" />
      <defaultWidget code="search_form" />
  </frame>
  <frame pos="3">
      <descr>Login</descr>
      <sketch x1="9" y1="0" x2="11" y2="0" />
      <defaultWidget code="keycloak-login" />
  </frame>
  <frame pos="4">
      <descr>Frame 1</descr>
      <sketch x1="0" y1="1" x2="5" y2="2" />
  </frame>
  <frame pos="5">
      <descr>Frame 2</descr>
      <sketch x1="6" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="6">
      <descr>Frame 3</descr>
      <sketch x1="6" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="7">
      <descr>Frame 4</descr>
      <sketch x1="0" y1="3" x2="5" y2="4" />
  </frame>
  <frame pos="8">
      <descr>Frame 5</descr>
      <sketch x1="6" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="9">
      <descr>Frame 6</descr>
      <sketch x1="6" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="10">
      <descr>Footer</descr>
      <sketch x1="0" y1="5" x2="11" y2="5" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="systemParam" paramName="applicationBaseURL" var="appUrl" />

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="${appUrl}favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />
        <@wp.fragment code="keycloak_auth" escapeXml=false />

        <@wp.outputHeadInfo type="CSS">
            <link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
        </@wp.outputHeadInfo>
        </head>
        <body>
          <header-fragment app-url="${appUrl}">
            <template>
                <@wp.show frame=0 />
                <@wp.show frame=1 />
                <@wp.show frame=2 />
                <@wp.show frame=3 />
            </template>
          </header-fragment>
          <div class="bx--grid Homepage__body">
            <div class="bx--row">
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=4 /></div>
                  <div><@wp.show frame=7 /></div>
              </div>
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=5 /></div>
                  <div><@wp.show frame=6 /></div>
                  <div><@wp.show frame=8 /></div>
                  <div><@wp.show frame=9 /></div>
                </div>
            </div>
          </div>
          <div class="Homepage__footer"><@wp.show frame=10 /></div>
        </body>
</html>
');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('content-page','Content Page','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Logo</descr>
      <sketch x1="0" y1="0" x2="2" y2="0" />
      <defaultWidget code="logo" />
  </frame>
  <frame pos="1">
      <descr>Navigation bar</descr>
      <sketch x1="3" y1="0" x2="5" y2="0" />
      <defaultWidget code="navigation-menu" />
  </frame>
  <frame pos="2">
      <descr>Search</descr>
      <sketch x1="6" y1="0" x2="8" y2="0" />
      <defaultWidget code="search_form" />
  </frame>
  <frame pos="3">
      <descr>Login</descr>
      <sketch x1="9" y1="0" x2="11" y2="0" />
      <defaultWidget code="keycloak-login" />
  </frame>
  <frame pos="4" main="true">
      <descr>Content Frame</descr>
      <defaultWidget code="content_viewer">
        <properties>
          <property key="modelId">10002</property>
        </properties>
      </defaultWidget>
      <sketch x1="0" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="5">
      <descr>Frame 2</descr>
      <sketch x1="0" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="6">
      <descr>Frame 3</descr>
      <sketch x1="0" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="7">
      <descr>Frame 4</descr>
      <sketch x1="0" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="8">
      <descr>Footer</descr>
      <sketch x1="0" y1="5" x2="11" y2="5" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="systemParam" paramName="applicationBaseURL" var="appUrl" />

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="${appUrl}favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />
        <@wp.fragment code="keycloak_auth" escapeXml=false />

        <@wp.outputHeadInfo type="CSS">
            <link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
        </@wp.outputHeadInfo>
        </head>
        <body>
          <header-fragment app-url="${appUrl}">
            <template>
                <@wp.show frame=0 />
                <@wp.show frame=1 />
                <@wp.show frame=2 />
                <@wp.show frame=3 />
            </template>
          </header-fragment>
          <div class="bx--grid Homepage__body">
            <div class="bx--row"><@wp.show frame=4 /></div>
            <div class="bx--row"><@wp.show frame=5 /></div>
            <div class="bx--row"><@wp.show frame=6 /></div>
            <div class="bx--row"><@wp.show frame=7 /></div>
          </div>
          <div class="Homepage__footer"><@wp.show frame=8 /></div>
        </body>
</html>
');

INSERT INTO contents (contentid,contenttype,descr,status,workxml,created,lastmodified,onlinexml,published,sync,maingroup,currentversion,lasteditor,firsteditor,restriction) VALUES ('BNR2','BNR','Sample Banner','PUBLIC','<?xml version="1.0" encoding="UTF-8"?>
<content id="BNR2" typecode="BNR" typedescr="Banner"><descr>Sample Banner</descr><groups mainGroup="free" /><categories /><attributes><attribute name="title" attributetype="Text"><text lang="en">Hello, world!</text></attribute><attribute name="abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for banner content.</p>]]></hypertext></attribute><attribute name="link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Learn more</text><properties /></attribute><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="entandoAtPlan" lang="en" /><text lang="en">Entando at Plan</text></attribute><attribute name="placement" attributetype="Enumerator" /></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080034</created><lastModified>20220624080034</lastModified></content>
','20220624080034','20220624080034','<?xml version="1.0" encoding="UTF-8"?>
<content id="BNR2" typecode="BNR" typedescr="Banner"><descr>Sample Banner</descr><groups mainGroup="free" /><categories /><attributes><attribute name="title" attributetype="Text"><text lang="en">Hello, world!</text></attribute><attribute name="abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for banner content.</p>]]></hypertext></attribute><attribute name="link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Learn more</text><properties /></attribute><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="entandoAtPlan" lang="en" /><text lang="en">Entando at Plan</text></attribute><attribute name="placement" attributetype="Enumerator" /></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080034</created><lastModified>20220624080034</lastModified></content>
','20220624080034',1,'free','1.0',NULL,'admin',NULL);
INSERT INTO contents (contentid,contenttype,descr,status,workxml,created,lastmodified,onlinexml,published,sync,maingroup,currentversion,lasteditor,firsteditor,restriction) VALUES ('BNR3','BNR','A Modern Platform for Modern UX','PUBLIC','<?xml version="1.0" encoding="UTF-8"?>
<content id="BNR3" typecode="BNR" typedescr="Banner"><descr>A Modern Platform for Modern UX</descr><groups mainGroup="free" /><categories /><attributes><attribute name="title" attributetype="Text"><text lang="en">A Modern Platform for Modern UX</text></attribute><attribute name="abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
      Entando is an open source software company providing the leading micro frontend platform building enterprise web apps on Kubernetes.
      </p>]]></hypertext></attribute><attribute name="link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Learn more at Entando.com</text><properties /></attribute><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="entandoAtPlan" lang="en" /><text lang="en">Entando at Plan</text></attribute><attribute name="placement" attributetype="Enumerator"><monotext>RIGHT</monotext></attribute></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080035</created><lastModified>20220624080035</lastModified></content>
','20220624080035','20220624080035','<?xml version="1.0" encoding="UTF-8"?>
<content id="BNR3" typecode="BNR" typedescr="Banner"><descr>A Modern Platform for Modern UX</descr><groups mainGroup="free" /><categories /><attributes><attribute name="title" attributetype="Text"><text lang="en">A Modern Platform for Modern UX</text></attribute><attribute name="abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
      Entando is an open source software company providing the leading micro frontend platform building enterprise web apps on Kubernetes.
      </p>]]></hypertext></attribute><attribute name="link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Learn more at Entando.com</text><properties /></attribute><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="entandoAtPlan" lang="en" /><text lang="en">Entando at Plan</text></attribute><attribute name="placement" attributetype="Enumerator"><monotext>RIGHT</monotext></attribute></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080035</created><lastModified>20220624080035</lastModified></content>
','20220624080035',1,'free','1.0',NULL,'admin',NULL);
INSERT INTO contents (contentid,contenttype,descr,status,workxml,created,lastmodified,onlinexml,published,sync,maingroup,currentversion,lasteditor,firsteditor,restriction) VALUES ('NWS4','NWS','Why You Need a Micro Frontend Platform for Kubernetes','PUBLIC','<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS4" typecode="NWS" typedescr="News"><descr>Why You Need a Micro Frontend Platform for Kubernetes</descr><groups mainGroup="free" /><categories /><attributes><attribute name="date" attributetype="Date"><date>20200831</date></attribute><attribute name="title" attributetype="Text"><text lang="en">Why You Need a Micro Frontend Platform for Kubernetes</text></attribute><attribute name="abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p> In a world where customers will abandon your brand after even one bad online experience, constantly innovating UX is essential to any business plan. However, when your organization builds large web apps with a monolithic structure, it can be difficult to respond to user needs in real time.</p>

			]]></hypertext></attribute><attribute name="body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p> In a world where customers will abandon your brand after even one bad online experience, constantly innovating UX is essential to any business plan. However, when your organization builds large web apps with a monolithic structure, it can be difficult to respond to user needs in real time. To overcome this challenge, many IT leaders have opted for a more modular approach to development. Building applications with micro frontends in a Kubernetes environment can help you structure your organization into independent teams that have control over a particular business function within a larger app at every layer of the stack. In so doing, you allow your decision making units to be smaller, which enables your organization to innovate more quickly overall. So then why do you need a micro frontend platform for Kuberntes? What does a platform add that enhances this process?  Here are 3 compelling reasons your enterprise needs a micro frontend platform.</p>

			]]></hypertext></attribute><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="entandoAtWork" lang="en" /><text lang="en">Entando at Work</text></attribute><attribute name="link" attributetype="Link"><properties /></attribute><attribute name="category" attributetype="Text"><text lang="en">PRODUCT</text></attribute><attribute name="direction" attributetype="Enumerator" /></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080035</created><lastModified>20220624080035</lastModified></content>
','20220624080035','20220624080035','<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS4" typecode="NWS" typedescr="News"><descr>Why You Need a Micro Frontend Platform for Kubernetes</descr><groups mainGroup="free" /><categories /><attributes><attribute name="date" attributetype="Date"><date>20200831</date></attribute><attribute name="title" attributetype="Text"><text lang="en">Why You Need a Micro Frontend Platform for Kubernetes</text></attribute><attribute name="abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p> In a world where customers will abandon your brand after even one bad online experience, constantly innovating UX is essential to any business plan. However, when your organization builds large web apps with a monolithic structure, it can be difficult to respond to user needs in real time.</p>

			]]></hypertext></attribute><attribute name="body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p> In a world where customers will abandon your brand after even one bad online experience, constantly innovating UX is essential to any business plan. However, when your organization builds large web apps with a monolithic structure, it can be difficult to respond to user needs in real time. To overcome this challenge, many IT leaders have opted for a more modular approach to development. Building applications with micro frontends in a Kubernetes environment can help you structure your organization into independent teams that have control over a particular business function within a larger app at every layer of the stack. In so doing, you allow your decision making units to be smaller, which enables your organization to innovate more quickly overall. So then why do you need a micro frontend platform for Kuberntes? What does a platform add that enhances this process?  Here are 3 compelling reasons your enterprise needs a micro frontend platform.</p>

			]]></hypertext></attribute><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="entandoAtWork" lang="en" /><text lang="en">Entando at Work</text></attribute><attribute name="link" attributetype="Link"><properties /></attribute><attribute name="category" attributetype="Text"><text lang="en">PRODUCT</text></attribute><attribute name="direction" attributetype="Enumerator" /></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080035</created><lastModified>20220624080035</lastModified></content>
','20220624080035',1,'free','1.0',NULL,'admin',NULL);
INSERT INTO contents (contentid,contenttype,descr,status,workxml,created,lastmodified,onlinexml,published,sync,maingroup,currentversion,lasteditor,firsteditor,restriction) VALUES ('NWS5','NWS','Entando and JHipster: How It Works','PUBLIC','<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS5" typecode="NWS" typedescr="News"><descr>Entando and JHipster: How It Works</descr><groups mainGroup="free" /><categories /><attributes><attribute name="date" attributetype="Date"><date>20200903</date></attribute><attribute name="title" attributetype="Text"><text lang="en">Entando and JHipster: How It Works</text></attribute><attribute name="abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p> Entando’s sponsorship of JHipster reaffirms our commitment to open source and to incorporating the best open source technologies in the Entando platform</p>

			]]></hypertext></attribute><attribute name="body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p> Entando’s sponsorship of JHipster reaffirms our commitment to open source and to incorporating the best open source technologies in the Entando platform. JHipster has been included in Entando since the 6.0 release, helping customers generate microservices and micro frontends. The ability to customize JHipster via a Blueprint has given us the flexibility to automate key elements of the Entando platform and to enhance the developer experience.</p>
<p>With our sponsorship we’re looking forward to getting more deeply involved in the JHipster community and to contribute to JHipster 7 and beyond.</p>
<p>Technical Notes</p>
<p>JHipster and the blueprint pattern give Entando developers the ability to quickly create a standardized Spring Boot microservice which can be installed into an Entando cluster on Kubernetes.  </p>

			]]></hypertext></attribute><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="htmlCode" lang="en" /><text lang="en">HTML Code</text></attribute><attribute name="link" attributetype="Link"><properties /></attribute><attribute name="category" attributetype="Text"><text lang="en">ENGINEERING</text></attribute><attribute name="direction" attributetype="Enumerator" /></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080035</created><lastModified>20220624080035</lastModified></content>
','20220624080035','20220624080035','<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS5" typecode="NWS" typedescr="News"><descr>Entando and JHipster: How It Works</descr><groups mainGroup="free" /><categories /><attributes><attribute name="date" attributetype="Date"><date>20200903</date></attribute><attribute name="title" attributetype="Text"><text lang="en">Entando and JHipster: How It Works</text></attribute><attribute name="abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p> Entando’s sponsorship of JHipster reaffirms our commitment to open source and to incorporating the best open source technologies in the Entando platform</p>

			]]></hypertext></attribute><attribute name="body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p> Entando’s sponsorship of JHipster reaffirms our commitment to open source and to incorporating the best open source technologies in the Entando platform. JHipster has been included in Entando since the 6.0 release, helping customers generate microservices and micro frontends. The ability to customize JHipster via a Blueprint has given us the flexibility to automate key elements of the Entando platform and to enhance the developer experience.</p>
<p>With our sponsorship we’re looking forward to getting more deeply involved in the JHipster community and to contribute to JHipster 7 and beyond.</p>
<p>Technical Notes</p>
<p>JHipster and the blueprint pattern give Entando developers the ability to quickly create a standardized Spring Boot microservice which can be installed into an Entando cluster on Kubernetes.  </p>

			]]></hypertext></attribute><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="htmlCode" lang="en" /><text lang="en">HTML Code</text></attribute><attribute name="link" attributetype="Link"><properties /></attribute><attribute name="category" attributetype="Text"><text lang="en">ENGINEERING</text></attribute><attribute name="direction" attributetype="Enumerator" /></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080035</created><lastModified>20220624080035</lastModified></content>
','20220624080035',1,'free','1.0',NULL,'admin',NULL);
INSERT INTO contents (contentid,contenttype,descr,status,workxml,created,lastmodified,onlinexml,published,sync,maingroup,currentversion,lasteditor,firsteditor,restriction) VALUES ('TCL6','TCL','Sample - About Us','PUBLIC','<?xml version="1.0" encoding="UTF-8"?>
<content id="TCL6" typecode="TCL" typedescr="2 columns"><descr>Sample - About Us</descr><groups mainGroup="free" /><categories /><attributes><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="entandoAtPlan" lang="en" /><text lang="en">Entando at Work</text></attribute><attribute name="title" attributetype="Text"><text lang="en">About Us</text></attribute><attribute name="subtitle" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			By integrating leading edge open source projects and extending their capabilities, Entando allows developers and operations teams to create modern UX on Kubernetes.

			]]></hypertext></attribute><attribute name="col1" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p class="tcol-content-paragraph">
        Entando is an open source software company providing the leading micro frontend platform building enterprise web apps on Kubernetes.
The company,  founded in 2010 as an open-source system integrator, was re-founded as a product company in 2015 in response to the growing demand for tools and services  to create modern online experiences. Since then, Entando has stepped into international markets. It’s headquartered in San Diego, California with R&D and sales offices in Europe, and features teams all over the world, including the United States, Italy, Brazil, South Africa, Georgia and the Philippines.
      </p>
      <p>
In 2015, Entando was named in the “Cool Vendors in Web Computing” Gartner report. In 2017, it became an official Red Hat Technology Partner, followed in 2018 by an OEM agreement with Red Hat. Also in 2018 the platform won the Digital360 Awards prize in the cloud computing category.
      </p>

			]]></hypertext></attribute><attribute name="col2" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p>
        As a leader in modern software paradigms, Entando seeks to continuously and rigorously optimize and standardize the enterprise experience of building applications in the modern world, helping them succeed in any field. Entando has particular expertise in the banking, public sector, and services industries.
Entando services span various software subscription and service levels and are designed to meet each customer’s specific needs. The Entando solution consists of Subscription Support Services, Certification and Training, and Consulting Services.
      </p>
      <p>
Entando is supported by a strong ecosystem of certified partners that bring both industry expertise and local delivery capabilities to address our customers’ most common needs: time to market, continuous innovation, and simplicity.
      </p>

			]]></hypertext></attribute></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080036</created><lastModified>20220624080036</lastModified></content>
','20220624080036','20220624080036','<?xml version="1.0" encoding="UTF-8"?>
<content id="TCL6" typecode="TCL" typedescr="2 columns"><descr>Sample - About Us</descr><groups mainGroup="free" /><categories /><attributes><attribute name="image" attributetype="Image"><resource resourcetype="Image" id="entandoAtPlan" lang="en" /><text lang="en">Entando at Work</text></attribute><attribute name="title" attributetype="Text"><text lang="en">About Us</text></attribute><attribute name="subtitle" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			By integrating leading edge open source projects and extending their capabilities, Entando allows developers and operations teams to create modern UX on Kubernetes.

			]]></hypertext></attribute><attribute name="col1" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p class="tcol-content-paragraph">
        Entando is an open source software company providing the leading micro frontend platform building enterprise web apps on Kubernetes.
The company,  founded in 2010 as an open-source system integrator, was re-founded as a product company in 2015 in response to the growing demand for tools and services  to create modern online experiences. Since then, Entando has stepped into international markets. It’s headquartered in San Diego, California with R&D and sales offices in Europe, and features teams all over the world, including the United States, Italy, Brazil, South Africa, Georgia and the Philippines.
      </p>
      <p>
In 2015, Entando was named in the “Cool Vendors in Web Computing” Gartner report. In 2017, it became an official Red Hat Technology Partner, followed in 2018 by an OEM agreement with Red Hat. Also in 2018 the platform won the Digital360 Awards prize in the cloud computing category.
      </p>

			]]></hypertext></attribute><attribute name="col2" attributetype="Hypertext"><hypertext lang="en"><![CDATA[

			<p>
        As a leader in modern software paradigms, Entando seeks to continuously and rigorously optimize and standardize the enterprise experience of building applications in the modern world, helping them succeed in any field. Entando has particular expertise in the banking, public sector, and services industries.
Entando services span various software subscription and service levels and are designed to meet each customer’s specific needs. The Entando solution consists of Subscription Support Services, Certification and Training, and Consulting Services.
      </p>
      <p>
Entando is supported by a strong ecosystem of certified partners that bring both industry expertise and local delivery capabilities to address our customers’ most common needs: time to market, continuous innovation, and simplicity.
      </p>

			]]></hypertext></attribute></attributes><status>PUBLIC</status><version>1.0</version><firstEditor>admin</firstEditor><created>20220624080036</created><lastModified>20220624080036</lastModified></content>
','20220624080036',1,'free','1.0',NULL,'admin',NULL);

INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',0,'logo',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',2,'search_form',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',3,'keycloak-login',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',4,'content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentDescription">A Modern Platform for Modern UX</property>
<property key="contentId">BNR3</property>
<property key="joinGroups">()</property>
<property key="modelId">10003</property>
<property key="ownerGroup">free</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',5,'content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
    <property key="modelId">10021</property>
    <property key="maxElemForItem">5</property>
    <property key="contentType">NWS</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('my_homepage',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',0,'logo',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',2,'search_form',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',3,'keycloak-login',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',4,'sitemap',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('search_result',0,'logo',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('search_result',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('search_result',2,'search_form',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('search_result',3,'keycloak-login',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('search_result',4,'search_result',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('search_result',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('about_us',0,'logo',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('about_us',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('about_us',2,'search_form',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('about_us',3,'keycloak-login',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('about_us',4,'content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentDescription">Sample - About Us</property>
<property key="ownerGroup">free</property>
<property key="contentId">TCL6</property>
<property key="joinGroups">[]</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('about_us',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('news',0,'logo',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('news',1,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(my_homepage) + code(my_homepage).children</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('news',2,'search_form',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('news',3,'keycloak-login',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('news',4,'content_viewer',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('news',8,'navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(sitemap)</property>
</properties>');

INSERT INTO userpreferences (username,wizard,loadonpageselect,translationwarning,defaultpageownergroup,defaultpagejoingroups,defaultcontentownergroup,defaultcontentjoingroups,defaultwidgetownergroup,defaultwidgetjoingroups) VALUES ('admin',0,1,1,NULL,NULL,NULL,NULL,NULL,NULL);

INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('service','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagine di Servizio</property>
<property key="en">Service</property>
</properties>','single_frame_page',0,NULL,TO_DATE('2017-02-17 13:06:24','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('login','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagina di login</property>
<property key="en">Login</property>
</properties>','single_frame_page',1,NULL,TO_DATE('2017-02-17 15:32:34','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('notfound','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>','single_frame_page',1,NULL,TO_DATE('2017-02-17 16:37:10','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('errorpage','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Error page</property>
<property key="it">Pagina di errore</property>
</properties>','single_frame_page',1,NULL,TO_DATE('2017-02-17 21:11:54','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('homepage','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>','home',1,NULL,TO_DATE('2017-02-18 00:12:24','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('my_homepage','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">My Homepage</property>
<property key="it">My Homepage</property>
</properties>','1-column',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf8</charset>
  <mimeType>text/html</mimeType>
</config>',TO_DATE('2020-07-31 10:22:15','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('sitemap','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sitemap</property>
<property key="it">Sitemap</property>
</properties>','1-column',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
</config>',TO_DATE('2020-06-08 08:43:13','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('search_result','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Result</property>
<property key="it">Risultati della Ricerca</property>
</properties>','1-column',0,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
</config>',TO_DATE('2020-06-08 08:43:13','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('about_us','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">About Us</property>
<property key="it">Chi Siamo</property>
</properties>','1-column',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
</config>',TO_DATE('2020-06-08 08:43:13','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('news','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">News</property>
</properties>','content-page',0,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
  <useextradescriptions>false</useextradescriptions>
  <descriptions>
    <property key="en" useDefaultLang="false">News</property>
    <property key="it" useDefaultLang="false">News</property>
  </descriptions>
  <keywords>
    <property key="en" useDefaultLang="false">News</property>
    <property key="it" useDefaultLang="false">News</property>
  </keywords>
  <complexParameters />
</config>

',TO_DATE('2020-11-16 16:24:01','YYYY-MM-DD HH24:MI:SS'));



INSERT INTO jpseo_friendlycode (friendlycode,pagecode,contentid,langcode) VALUES ('entando_and_jhipster_how_it_works',NULL,'NWS5','en');
INSERT INTO jpseo_friendlycode (friendlycode,pagecode,contentid,langcode) VALUES ('hello_world',NULL,'BNR2','en');
INSERT INTO jpseo_friendlycode (friendlycode,pagecode,contentid,langcode) VALUES ('a_modern_platform_for_modern_ux',NULL,'BNR3','en');
INSERT INTO jpseo_friendlycode (friendlycode,pagecode,contentid,langcode) VALUES ('why_you_need_a_micro_frontend_platform_for_kubernetes',NULL,'NWS4','en');
INSERT INTO jpseo_friendlycode (friendlycode,pagecode,contentid,langcode) VALUES ('about_us',NULL,'TCL6','en');

INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('BNR2',NULL,NULL,NULL,NULL,'free');
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('BNR2',NULL,NULL,'entandoAtPlan',NULL,NULL);
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('BNR3',NULL,NULL,NULL,NULL,'free');
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('BNR3',NULL,NULL,'entandoAtPlan',NULL,NULL);
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('NWS4',NULL,NULL,NULL,NULL,'free');
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('NWS4',NULL,NULL,'entandoAtWork',NULL,NULL);
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('NWS5',NULL,NULL,NULL,NULL,'free');
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('NWS5',NULL,NULL,'htmlCode',NULL,NULL);
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('TCL6',NULL,NULL,NULL,NULL,'free');
INSERT INTO contentrelations (contentid,refpage,refcontent,refresource,refcategory,refgroup) VALUES ('TCL6',NULL,NULL,'entandoAtPlan',NULL,NULL);

INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_editCurrentUser_profile','userprofile_editCurrentUser_profile',NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<#if (Session.currentUser != "guest") >
	<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/Profile/save.action" />" method="post" class="form-horizontal">
	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<@s.set var="lang" value="defaultLang" />
	<@s.iterator value="userProfile.attributeList" var="attribute">
		<@s.if test="%{#attribute.active}">
			<@wpsa.tracerFactory var="attributeTracer" lang="%{#lang.code}" />
				<@s.set var="i18n_attribute_name">userprofile_<@s.property value="userProfile.typeCode" />_<@s.property value="#attribute.name" /></@s.set>
				<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" /></@s.set>
				<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false />
		</@s.if>
	</@s.iterator>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PROFILE" var="userprofile_SAVE_PROFILE" />
		<@wpsf.submit useTabindexAutoIncrement=true value="%{#attr.userprofile_SAVE_PROFILE}" cssClass="btn btn-primary" />
	</p>

	</form>
<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN" />
	</p>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-DateAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>

<@s.if test="#attribute.failedDateString == null">
<@s.set var="dateAttributeValue" value="#attribute.getFormattedDate(''dd/MM/yyyy'')" />
</@s.if>
<@s.else>
<@s.set var="dateAttributeValue" value="#attribute.failedDateString" />
</@s.else>
<@wpsf.textfield
useTabindexAutoIncrement=true id="%{attribute_id}"
name="%{#attributeTracer.getFormFieldName(#attribute)}"
value="%{#dateAttributeValue}" maxlength="10" cssClass="text userprofile-date" />
&#32;
<#assign js_for_datepicker="jQuery(function($){
	$.datepicker.regional[''it''] = {
		closeText: ''Chiudi'',
		prevText: ''&#x3c;Prec'',
		nextText: ''Succ&#x3e;'',
		currentText: ''Oggi'',
		monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
			''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
		monthNamesShort: [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
			''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
		dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
		dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
		dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
		weekHeader: ''Sm'',
		dateFormat: ''dd/mm/yy'',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''''};
});

jQuery(function($){
	if (Modernizr.touch && Modernizr.inputtypes.date) {
		$.each(	$(''input.userprofile-date''), function(index, item) {
			item.type = ''date'';
		});
	} else {
		$.datepicker.setDefaults( $.datepicker.regional[''${currentLangVar}''] );
		$(''input.userprofile-date'').datepicker({
      			changeMonth: true,
      			changeYear: true,
      			dateFormat: ''dd/mm/yyyy''
    		});
	}
});" >

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front_attributeInfo-help-block',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.set var="validationRules" value="#attribute.validationRules.ognlValidationRule" />
<@s.set var="hasValidationRulesVar" value="%{#validationRules != null && #validationRules.expression != null}" />

<@s.if test="%{#hasValidationRulesVar || #attribute.type == ''Date'' || (#attribute.textAttribute && (#attribute.minLength != -1 || #attribute.maxLength != -1))}">
		<span class="help-block">
		<@s.if test="#attribute.type == ''Date''">dd/MM/yyyy&#32;</@s.if>
		<@s.if test="%{#validationRules.helpMessageKey != null}">
			<@s.set var="label" scope="page" value="#validationRules.helpMessageKey" /><@wp.i18n key="${label}" />
		</@s.if>
		<@s.elseif test="%{#validationRules.helpMessage != null}">
			<@s.property value="#validationRules.helpMessage" />
		</@s.elseif>
		<@s.if test="#attribute.minLength != -1">
			&#32;
			<abbr title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL" />&#32;<@s.property value="#attribute.minLength" />">
				<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT" />:&#32;<@s.property value="#attribute.minLength" />
			</abbr>
		</@s.if>
		<@s.if test="#attribute.maxLength != -1">
			&#32;
			<abbr title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL" />&#32;<@s.property value="#attribute.maxLength" />">
				<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT" />:&#32;<@s.property value="#attribute.maxLength" />
			</abbr>
		</@s.if>
	</span>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_passwordChanged',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign s=JspTaglibs["/struts-tags"]>

<h1><@wp.i18n key="userprofile_EDITPASSWORD_TITLE" /></h1>
<p class="alert alert-success"><@wp.i18n key="userprofile_PASSWORD_UPDATED" /></p>
<@s.if test="!#session.currentUser.credentialsNonExpired">
	<p class="alert alert-info">
		<a href="<@s.url namespace="/do" action="logout" />" ><@wp.i18n key="userprofile_PLEASE_LOGIN_AGAIN" /></a>
	</p>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-HypertextAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.textarea
	useTabindexAutoIncrement=true
	cols="50"
	rows="3"
	id="%{#attribute_id}"
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	value="%{#attribute.textMap[#lang.code]}"  />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-NumberAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.if test="#attribute.failedNumberString == null">
	<@s.set var="numberAttributeValue" value="#attribute.value"></@s.set>
</@s.if>
<@s.else>
	<@s.set var="numberAttributeValue" value="#attribute.failedNumberString"></@s.set>
</@s.else>
<@wpsf.textfield
		useTabindexAutoIncrement=true
		id="%{#attribute_id}"
		name="%{#attributeTracer.getFormFieldName(#attribute)}"
		value="%{#numberAttributeValue}"
		maxlength="254" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-BooleanAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-true''}" />">
	<@wpsf.radio
		useTabindexAutoIncrement=true
		name="%{#attributeTracer.getFormFieldName(#attribute)}"
		id="%{#attribute_id + ''-true''}"
		value="true"
		checked="%{#attribute.value == true}"
		cssClass="radio" />
		<@wp.i18n key="userprofile_YES" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id+''-false''}" />">
	<@wpsf.radio
		useTabindexAutoIncrement=true
		name="%{#attributeTracer.getFormFieldName(#attribute)}"
		id="%{#attribute_id + ''-false''}"
		value="false"
		checked="%{#attribute.value == false}"
		cssClass="radio" />
		<@wp.i18n key="userprofile_NO" />
</label>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Enumer',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<select name="${formFieldNameVar}" id="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list userFilterOptionVar.attribute.items as enumeratorItemVar>
			<option value="${enumeratorItemVar}" <#if (formFieldValue??) && (enumeratorItemVar == formFieldValue)>selected="selected"</#if> >${enumeratorItemVar}</option>
			</#list>
		</select>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-ThreeStateAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-none''}" />">
	<@wpsf.radio
		useTabindexAutoIncrement=true
		name="%{#attributeTracer.getFormFieldName(#attribute)}"
		id="%{#attribute_id + ''-none''}"
		value=""
		checked="%{#attribute.booleanValue == null}"
		cssClass="radio" />
		<@wp.i18n key="userprofile_BOTH_YES_AND_NO" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-true''}" />">
	<@wpsf.radio
		useTabindexAutoIncrement=true
		name="%{#attributeTracer.getFormFieldName(#attribute)}"
		id="%{#attribute_id + ''-true''}"
		value="true"
		checked="%{#attribute.booleanValue != null && #attribute.booleanValue == true}"
		cssClass="radio" />
		<@wp.i18n key="userprofile_YES" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-false''}" />">
	<@wpsf.radio
		useTabindexAutoIncrement=true
		name="%{#attributeTracer.getFormFieldName(#attribute)}"
		id="%{#attribute_id + ''-false''}"
		value="false"
		checked="%{#attribute.booleanValue != null && #attribute.booleanValue == false}"
		cssClass="radio" />
		<@wp.i18n key="userprofile_NO" />
</label>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front_AttributeInfo',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.if test="#attribute.required">
	<abbr class="icon icon-asterisk" title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL" />"><span class="noscreen"><@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT" /></span></abbr>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front_AllList_operationModule',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.if test="null == #operationButtonDisabled">
	<@s.set var="operationButtonDisabled" value="false" />
</@s.if>
<div class="btn-toolbar">
	<div class="btn-group btn-group-sm">
		<@wpsa.actionParam action="moveListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
			<@wpsa.actionSubParam name="movement" value="UP" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default" title="%{getText(''label.moveInPositionNumber'')}: %{#elementIndex}">
		<span class="icon fa fa-sort-desc"></span>
		<span class="sr-only"><@s.text name="label.moveInPositionNumber" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>

		<@wpsa.actionParam action="moveListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
			<@wpsa.actionSubParam name="movement" value="DOWN" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default" title="%{getText(''label.moveInPositionNumber'')}: %{#elementIndex+2}">
		<span class="icon fa fa-sort-asc"></span>
		<span class="sr-only"><@s.text name="label.moveInPositionNumber" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>
	</div>
	<div class="btn-group btn-group-sm">
		<@wpsa.actionParam action="removeListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default btn-warning" title="%{getText(''label.remove'')}: %{#elementIndex}">
		<span class="icon fa fa-times-circle-o"></span>
		<span class="sr-only"><@s.text name="label.remove" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-AllList-addElementButton',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.set var="add_label"><@wp.i18n key="userprofile_ADDITEM_LIST" /></@s.set>

<@wpsa.actionParam action="addListElement" var="actionName" >
	<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
	<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
</@wpsa.actionParam>
<@s.set var="iconImagePath" id="iconImagePath"><@wp.resourceURL/>administration/common/img/icons/list-add.png</@s.set>
<@wpsf.submit
	cssClass="btn"
	useTabindexAutoIncrement=true
	action="%{#actionName}"
	value="%{add_label}"
	title="%{i18n_attribute_name}%{'': ''}%{add_label}" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_IteratorAttribute',NULL,NULL,NULL,TO_CLOB('<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign i18n_attribute_name ><@s.property value="#i18n_attribute_name" /></#assign>
<@s.if test="#attribute.type == ''Boolean''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-BooleanAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.if>
<@s.elseif test="#attribute.type == ''CheckBox''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-CheckboxAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Composite''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top">
				<@wp.i18n key="${i18n_attribute_name}" />
				<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-CompositeAttribute" escapeXml=false />
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Date''">
	<div class="control-group <')||TO_CLOB('@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-DateAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Enumerator''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-EnumeratorAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''EnumeratorMap''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-EnumeratorMapAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Hypertext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_f')||TO_CLOB('ront_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-HypertextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''List''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top">
				<@wp.i18n key="${i18n_attribute_name}" />
					<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-MonolistAttribute" escapeXml=false />
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Longtext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-LongtextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Monolist''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top"><@wp.i18n key="${i18n_attribute_name}" />
				<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-MonolistAttribute" escapeXml=false />
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type ')||TO_CLOB('== ''Monotext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Number''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-NumberAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Text''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''ThreeState''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fr')||TO_CLOB('agment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-ThreeStateAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.else> <#-- for all other types, insert a simple label and a input[type="text"] -->
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.else>'),1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_editCurrentUser_password','userprofile_editCurrentUser_password',NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<h1><@wp.i18n key="userprofile_EDITPASSWORD" /></h1>

<#if (Session.currentUser != "guest") >

	<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/changePassword.action" />" method="post" class="form-horizontal">

	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>

	<p class="noscreen">
		<wpsf:hidden name="username" />
	</p>

	<div class="control-group">
		<label for="userprofile-old-password" class="control-label"><@wp.i18n key="userprofile_OLDPASSWORD" /></label>
		<div class="controls">
			<@wpsf.password
				useTabindexAutoIncrement=true
				name="oldPassword"
				id="userprofile-old-password" />
		</div>
	</div>

	<div class="control-group">
		<label for="userprofile-new-password" class="control-label"><@wp.i18n key="userprofile_NEWPASS" /></label>
		<div class="controls">
			<@wpsf.password
				useTabindexAutoIncrement=true
				name="password"
				id="userprofile-new-password" />
		</div>
	</div>

	<div class="control-group">
		<label for="userprofile-new-password-confirm" class="control-label"><@wp.i18n key="userprofile_CONFIRM_NEWPASS" /></label>
		<div class="controls">
			<@wpsf.password
				useTabindexAutoIncrement=true
				name="passwordConfirm"
				id="userprofile-new-password-confirm" />
		</div>
	</div>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PASSWORD" var="userprofile_SAVE_PASSWORD" />
		<@wpsf.submit
			useTabindexAutoIncrement=true
			value="%{#attr.userprofile_SAVE_PASSWORD}"
			cssClass="btn btn-primary" />
	</p>

	</form>

<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD" />
	</p>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-MonolistAttribute',NULL,NULL,NULL,TO_CLOB('<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@s.if test="#attribute.attributes.size() != 0">
	<ul class="unstyled">
</@s.if>

<@s.set var="masterListAttributeTracer" value="#attributeTracer" />
<@s.set var="masterListAttribute" value="#attribute" />

<@s.iterator value="#attribute.attributes" var="attribute" status="elementStatus">
	<@s.set var="attributeTracer" value="#masterListAttributeTracer.getMonoListElementTracer(#elementStatus.index)"></@s.set>
	<@s.set var="elementIndex" value="#elementStatus.index" />
	<@s.set var="i18n_attribute_name">userprofile_ATTR<@s.property value="#attribute.name" /></@s.set>
	<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" />_<@s.property value="#elementStatus.count" /></@s.set>

	<li class="control-group  <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@s.if test="#attribute.type == ''Composite''">
				<@s.property value="#elementStatus.count" /><span class="noscreen">&#32;<@s.text name="label.compositeAttribute.element" /></span>
				&#32;
				<@s.if test="#lang.default">
					<@wp.fragment code="userprofile_is_front_AllList_operationModule" escapeXml=false />
				</@s.if>
			</@s.if>
			<@s.else>
				<@s.property value="#elementStatus.count" />
				&#32;
				<@wp.fragment code="userprofile_is_front_AllList_operationModule" escapeXml=false />
			</@s.else>
		</label>
		<div class="controls">
			<@s.if test="#attribute.type == ''Boolean''">
				<@wp.fragment code="userprofile_is_front-BooleanAttribute" escapeXml=false />
			</@s.if>
			<@s.elseif test="#attribute.type == ''CheckBox''">
				<@wp.fragment code="userprofile_is_front-CheckboxAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Composite''">
				<@wp.fragment code="userprofile_is_front-Co')||TO_CLOB('mpositeAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Date''">
				<@wp.fragment code="userprofile_is_front-DateAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Enumerator''">
				<@wp.fragment code="userprofile_is_front-EnumeratorAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''EnumeratorMap''">
				<@wp.fragment code="userprofile_is_front-EnumeratorMapAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Hypertext''">
				<@wp.fragment code="userprofile_is_front-HypertextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Longtext''">
				<@wp.fragment code="userprofile_is_front-LongtextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Monotext''">
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Number''">
				<@wp.fragment code="userprofile_is_front-NumberAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''ThreeState''">
				<@wp.fragment code="userprofile_is_front-ThreeStateAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Text''">
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.else>
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			</@s.else>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</li>
</@s.iterator>

<@s.set var="attributeTracer" value="#masterListAttributeTracer" />
<@s.set var="attribute" value="#masterListAttribute" />
<@s.set var="elementIndex" value="" />
<@s.if test="#attribute.attributes.size() != 0">
</ul>
</@s.if>
<@s.if test="#lang.default">
	<div class="control-group">
		<div class="controls">
			<@wp.fragment code="us')||TO_CLOB('erprofile_is_front-AllList-addElementButton" escapeXml=false />
		</div>
	</div>
</@s.if>'),1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_profileChangeConfirmation',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<p><@wp.i18n key="userprofile_PROFILE_UPDATED" /></p>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_resource_detail_include',NULL,NULL,'','<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.if test="#methodVar == null">
	<p>
		<@s.property value="#currentMethodNameVar" />,&#32;<@wp.i18n key="ENTANDO_API_METHOD_KO" />
	</p>
</@s.if>
<@s.else>
	<dl class="dl-horizontal">
		<dt>
			<@wp.i18n key="ENTANDO_API_METHOD" />
		</dt>
			<dd>
				<@wp.i18n key="ENTANDO_API_METHOD_OK" />
			</dd>
		<@s.if test="#methodVar != null">
			<dt>
				<@wp.i18n key="ENTANDO_API_DESCRIPTION" />
			</dt>
				<dd><@s.property value="#methodVar.description" /></dd>
			<dt>
				<@wp.i18n key="ENTANDO_API_METHOD_AUTHORIZATION" />
			</dt>
				<dd>
					<@s.if test="%{null != #methodVar.requiredPermission}">
						<@s.iterator value="methodAuthorityOptions" var="permission"><@s.if test="#permission.key==#methodVar.requiredPermission"><@s.property value="#permission.value" /></@s.if></@s.iterator>
					</@s.if>
					<@s.elseif test="%{#methodVar.requiredAuth}">
						<@wp.i18n key="ENTANDO_API_METHOD_AUTH_SIMPLE" />
					</@s.elseif>
					<@s.else>
						<@wp.i18n key="ENTANDO_API_METHOD_AUTH_FREE" />
					</@s.else>
				</dd>
			<@s.if test=''%{!#methodVar.resourceName.equalsIgnoreCase("getService")}'' >
			<dt>
				<@wp.i18n key="ENTANDO_API_METHOD_SCHEMAS" />
			</dt>
				<dd class="schemas">
					<@s.if test=''%{#methodVar.httpMethod.toString().equalsIgnoreCase("POST") || #methodVar.httpMethod.toString().equalsIgnoreCase("PUT")}''>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/requestSchema.action" var="requestSchemaURLVar" >
							<@wp.parameter name="resourceName"><@s.property value="#methodVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#methodVar.namespace" /></@wp.parameter>
							<@wp.parameter name="httpMethod"><@s.property value="#methodVar.httpMethod" /></@wp.parameter>
						</@wp.action>
						<a href="${requestSchemaURLVar}" >
							<@wp.i18n key="ENTANDO_API_METHOD_SCHEMA_REQ" />
						</a>
						<br />
					</@s.if>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/responseSchema.action" var="responseSchemaURLVar" >
							<@wp.parameter name="resourceName"><@s.property value="#methodVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#methodVar.namespace" /></@wp.parameter>
							<@wp.parameter name="httpMethod"><@s.property value="#methodVar.httpMethod" /></@wp.parameter>
						</@wp.action>
						<a href="${responseSchemaURLVar}" >
							<@wp.i18n key="ENTANDO_API_METHOD_SCHEMA_RESP" />
						</a>
				</dd>
			</@s.if>
		</@s.if>
	</dl>
	<@s.if test="#methodVar != null">
		<@s.set var="methodParametersVar" value="#methodVar.parameters" />
		<@s.if test="null != #methodParametersVar && #methodParametersVar.size() > 0">
			<table class="table table-striped table-bordered table-condensed">
				<caption><@wp.i18n key="ENTANDO_API_METHOD_REQUEST_PARAMS" /></caption>
				<tr>
					<th><@wp.i18n key="ENTANDO_API_PARAM_NAME" /></th>
					<th><@wp.i18n key="ENTANDO_API_PARAM_DESCRIPTION" /></th>
					<th><@wp.i18n key="ENTANDO_API_PARAM_REQUIRED" /></th>
				</tr>
				<@s.iterator value="#methodParametersVar" var="apiParameter" >
					<tr>
						<td><@s.property value="#apiParameter.key" /></td>
						<td><@s.property value="#apiParameter.description" /></td>
						<td class="icon required_<@s.property value="#apiParameter.required" />">
							<@s.if test="#apiParameter.required">
								<@wp.i18n key="YES" />
							</@s.if>
							<@s.else>
								<@wp.i18n key="NO" />
							</@s.else>
						</td>
					</tr>
				</@s.iterator>
			</table>
		</@s.if>
	</@s.if>
</@s.else>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_entryCurrentProfile',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<#if (Session.currentUser != "guest") >
<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/Profile/save.action" />" method="post" class="form-horizontal">
	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<@s.set var="lang" value="defaultLang" />
	<@s.iterator value="userProfile.attributeList" var="attribute">
		<@s.if test="%{#attribute.active}">
			<@wpsa.tracerFactory var="attributeTracer" lang="%{#lang.code}" />
			<@s.set var="i18n_attribute_name">userprofile_<@s.property value="userProfile.typeCode" />_<@s.property value="#attribute.name" /></@s.set>
			<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" /></@s.set>
			<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false />
		</@s.if>
	</@s.iterator>
	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PROFILE" var="userprofile_SAVE_PROFILE" />
		<@wpsf.submit useTabindexAutoIncrement=true value="%{#attr.userprofile_SAVE_PROFILE}" cssClass="btn btn-primary" />
	</p>
</form>
<#else>
	<p><@wp.i18n key="userprofile_PLEASE_LOGIN" /></p>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_currentWithoutProfile',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<p class="label label-info">
	<@wp.i18n key="userprofile_CURRENT_USER_WITHOUT_PROFILE" />
</p>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-CheckboxAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.checkbox useTabindexAutoIncrement=true
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	id="%{attribute_id}" value="%{#attribute.value == true}"/>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-MonotextAttribute',NULL,NULL,NULL,'<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.textfield useTabindexAutoIncrement=true id="%{attribute_id}"
	name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#attribute.getTextForLang(#lang.code)}"
	maxlength="254" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-LongtextAttribute',NULL,NULL,NULL,'<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.textarea useTabindexAutoIncrement=true cols="30" rows="5" id="%{attribute_id}" name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#attribute.getTextForLang(#lang.code)}" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-CompositeAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@s.set var="i18n_parent_attribute_name" value="#attribute.name" />
<@s.set var="masterCompositeAttributeTracer" value="#attributeTracer" />
<@s.set var="masterCompositeAttribute" value="#attribute" />
<@s.iterator value="#attribute.attributes" var="attribute">
	<@s.set var="attributeTracer" value="#masterCompositeAttributeTracer.getCompositeTracer(#masterCompositeAttribute)"></@s.set>
	<@s.set var="parentAttribute" value="#masterCompositeAttribute"></@s.set>
	<@s.set var="i18n_attribute_name">userprofile_ATTR<@s.property value="%{i18n_parent_attribute_name}" /><@s.property value="#attribute.name" /></@s.set>
	<@s.set var="attribute_id">userprofile_<@s.property value="%{i18n_parent_attribute_name}" /><@s.property value="#attribute.name" />_<@s.property value="#elementIndex" /></@s.set>
	<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false />
</@s.iterator>
<@s.set var="attributeTracer" value="#masterCompositeAttributeTracer" />
<@s.set var="attribute" value="#masterCompositeAttribute" />
<@s.set var="parentAttribute" value=""></@s.set>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-EnumeratorAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.select useTabindexAutoIncrement=true
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	id="%{attribute_id}"
	headerKey="" headerValue=""
	list="#attribute.items" value="%{#attribute.getText()}" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-EnumeratorMapAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.select useTabindexAutoIncrement=true
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	id="%{attribute_id}"
	headerKey="" headerValue=""
	list="#attribute.mapItems" value="%{#attribute.getText()}" listKey="key" listValue="value" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_resource_list','entando_apis',NULL,NULL,TO_CLOB('<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<h2><@wp.i18n key="ENTANDO_API_RESOURCES" /></h2>
<@s.if test="hasActionErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.set var="resourceFlavoursVar" value="resourceFlavours" />

<@s.if test="#resourceFlavoursVar.size() > 0">
	<@s.set var="icon_free"><span class="icon icon-ok"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_FREE" /></span></@s.set>
	<@s.set var="title_free"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_FREE" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.set var="icon_auth"><span class="icon icon-user"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_AUTH" /></span></@s.set>
	<@s.set var="title_auth"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_AUTH" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.set var="icon_lock"><span class="icon icon-lock"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_LOCK" /></span></@s.set>
	<@s.set var="title_lock"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_LOCK" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.iterator var="resourceFlavourVar" value="#resourceFlavoursVar" status="resourceFlavourStatusVar">
		<table class="table table-striped table-bordered table-condensed">
			<@s.iterator value="#resourceFlavourVar" var="resourceVar" status="statusVar" >
				<@s.if test="#statusVar.first">
					<@s.if test="#resourceVar.source==''core''"><@s.set var="captionVar"><@s.property value="#resourceVar.source" escapeHtml=false /></@s.set></@s.if>
					<@s.else><@s.set var="captionVar"><@s.property value="%{getText(#resourceVar.sectionCode+''.name'')}" escapeHtml=false /></@s.set></@s.else>
					<caption>
						<@s.pr')||TO_CLOB('operty value="#captionVar" />
					</caption>
					<tr>
						<th class="span3"><@wp.i18n key="ENTANDO_API_RESOURCE" /></th>
						<th><@wp.i18n key="ENTANDO_API_DESCRIPTION" /></th>
						<th class="text-center span1">GET</th>
						<th class="text-center span1">POST</th>
						<th class="text-center span1">PUT</th>
						<th class="text-center span1">DELETE</th>
					</tr>
				</@s.if>
				<tr>
					<td>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/detail.action" var="detailActionURL">
							<@wp.parameter name="resourceName"><@s.property value="#resourceVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#resourceVar.namespace" /></@wp.parameter>
						</@wp.action>
						<a title="<@wp.i18n key="ENTANDO_API_GOTO_DETAILS" />:&#32;/<@s.property value="%{#resourceVar.namespace.length()>0?#resourceVar.namespace+''/'':''''}" /><@s.property value="#resourceVar.resourceName" />" href="${detailActionURL}" ><@s.property value="#resourceVar.resourceName" /></a>
					</td>
					<td><@s.property value="#resourceVar.description" /></td>
					<td class="text-center">
						<@s.if test="#resourceVar.getMethod != null && #resourceVar.getMethod.active && (!#resourceVar.getMethod.hidden)" >
							<@s.if test="#resourceVar.getMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.getMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_GET" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
				')||TO_CLOB('		<@s.if test="#resourceVar.postMethod != null && #resourceVar.postMethod.active && (!#resourceVar.postMethod.hidden)" >
							<@s.if test="#resourceVar.postMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.postMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_POST" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
						<@s.if test="#resourceVar.putMethod != null && #resourceVar.putMethod.active && (!#resourceVar.putMethod.hidden)" >
							<@s.if test="#resourceVar.putMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.putMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_PUT" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
						<@s.if test="#resourceVar.deleteMethod != null && #resourceVar.deleteMethod.active && (!#resourceVar.deleteMethod.hidden)" >
							<@s.if test="#resourceVar.deleteMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title')||TO_CLOB('" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.deleteMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_DELETE" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
				</tr>
			</@s.iterator>
		</table>

		<@s.if test="#resourceVar.source==''core''">
			<a href="<@wp.action path="/ExtStr2/do/Front/Api/Service/list.action" />" class="btn btn-primary pull-right"><@wp.i18n key="ENTANDO_API_GOTO_SERVICE_LIST" /></a>
		</@s.if>
	</@s.iterator>
</@s.if>
<@s.else>
	<p><@wp.i18n key="ENTANDO_API_NO_RESOURCES" /></p>
</@s.else>
<script nonce="<@wp.cspNonce />" >
  $(function () {
    $(''#api-togglers a:first'').tab(''show'');
  })
</script>'),1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_resource_detail','entando_apis',NULL,NULL,TO_CLOB('<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.set var="apiResourceVar" value="apiResource" />
<@s.set var="GETMethodVar" value="#apiResourceVar.getMethod" />
<@s.set var="POSTMethodVar" value="#apiResourceVar.postMethod" />
<@s.set var="PUTMethodVar" value="#apiResourceVar.putMethod" />
<@s.set var="DELETEMethodVar" value="#apiResourceVar.deleteMethod" />
<@s.set var="apiNameVar" value="(#apiResourceVar.namespace!=null && #apiResourceVar.namespace.length()>0 ? ''/'' + #apiResourceVar.namespace : '''')+''/''+#apiResourceVar.resourceName" />
<section>
<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>
<h2><@wp.i18n key="ENTANDO_API_RESOURCE" />&#32;<@s.property value="#apiNameVar" /></h2>
<@s.if test="hasActionMessages()">
	<div class="alert alert-box alert-success">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionErrors()">
	<div class="alert alert-box alert-error">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<!-- DESCRIPTION -->
<p><@s.property value="#apiResourceVar.description" /></p>

<!-- INFO -->
<dl class="dl-horizontal">
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_NAME" /></dt>
		<dd><@s.property value="#apiResourceVar.resourceName" /></dd>
	<dt><span lang="en"><@wp.i18n key="ENTANDO_API_RESOURCE_NAMESPACE" /></span></dt>
		<dd>/<@s.property value="#apiResourceVar.namespace" /></dd>
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_SOURCE" /></dt>
		<dd>
			<@s.property value="#apiResourceVar.source" /><@s.if test="%{#apiResourceVar.pluginCode != null && #')||TO_CLOB('apiResourceVar.pluginCode.length() > 0}">,&#32;<@s.property value="%{getText(#apiResourceVar.pluginCode+''.name'')}" />&#32;(<@s.property value="%{#apiResourceVar.pluginCode}" />)</@s.if>
		</dd>
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_URI" /></dt>
		<dd>
			<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />legacyapi/rs/<@wp.info key="currentLang" /><@s.if test="null != #apiResourceVar.namespace">/<@s.property value="#apiResourceVar.namespace" /></@s.if>/<@s.property value="#apiResourceVar.resourceName" />"><@wp.info key="systemParam" paramName="applicationBaseURL" />legacyapi/rs/<@wp.info key="currentLang" /><@s.if test="null != #apiResourceVar.namespace">/<@s.property value="#apiResourceVar.namespace" /></@s.if>/<@s.property value="#apiResourceVar.resourceName" /></a>
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_EXTENSION" />
	</dt>
		<dd>
			<@wp.i18n key="ENTANDO_API_EXTENSION_NOTE" />
		</dd>
</dl>

	<@s.set var="methodVar" value="#GETMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''GET''}" />
	<h3 id="api_method_GET">GET</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#POSTMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''POST''}" />
	<h3 id="api_method_POST">POST</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#PUTMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''PUT''}" />
	<h3 id="api_method_PUT">PUT</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#DELETEMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''DELETE''}" />
	<h3 id="api_method_DELETE">DELETE</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />
<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n')||TO_CLOB(' key="ENTANDO_API_GOTO_LIST" /></a>
</p>
</section>'),1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_service_list','entando_apis',NULL,NULL,TO_CLOB('<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<section>

<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>

<h2><@wp.i18n key="ENTANDO_API_GOTO_SERVICE_LIST" /></h2>
<@s.if test="hasActionErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@s.text name="message.title.ActionErrors" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasFieldErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@s.text name="message.title.FieldErrors" /></h3>
		<ul>
			<@s.iterator value="fieldErrors">
				<@s.iterator value="value">
				<li><@s.property escapeHtml=false /></li>
				</@s.iterator>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionMessages()">
	<div class="alert alert-block alert-info">
		<h3 class="alert-heading"><@s.text name="messages.confirm" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.set var="resourceFlavoursVar" value="resourceFlavours" />
<@s.set var="serviceFlavoursVar" value="serviceFlavours" />

<@s.if test="#serviceFlavoursVar != null && #serviceFlavoursVar.size() > 0">
<div class="tabbable tabs-left">
	<ul class="nav nav-tabs">
		<@s.iterator var="resourceFlavour" value="#resourceFlavoursVar" status="statusVar">
			<@s.set var="serviceGroupVar" value="#resourceFlavour.get(0).getSectionCode()" />
			<@s.set var="servicesByGroupVar" value="#serviceFlavoursVar[#serviceGroupVar]" />
			<@s.if test="null != #servicesByGroupVar && #servicesByGroupVar.size() > 0">
				<@s.if test="#serviceGroupVar == ''core''"><@s.set var="captionVar" value="%{#serviceGroupVar}" /></@s.if>
				<@s.else><@s.set var="capti')||TO_CLOB('onVar" value="%{getText(#serviceGroupVar + ''.name'')}" /></@s.else>
				<li<@s.if test="#statusVar.first"> class="active"</@s.if>>
					<a href="#api-flavour-<@s.property value=''%{#captionVar.toLowerCase().replaceAll("[^a-z0-9-]", "")}'' />" data-toggle="tab"><@s.property value=''%{#captionVar}'' /></a>
				</li>
			</@s.if>
		</@s.iterator>
	</ul>

  <div class="tab-content">
	<@s.iterator var="resourceFlavour" value="#resourceFlavoursVar" status="moreStatusVar">
		<@s.set var="serviceGroupVar" value="#resourceFlavour.get(0).getSectionCode()" />
		<@s.set var="servicesByGroupVar" value="#serviceFlavoursVar[#serviceGroupVar]" />
		<@s.if test="null != #servicesByGroupVar && #servicesByGroupVar.size() > 0">
			<@s.if test="#serviceGroupVar == ''core''"><@s.set var="captionVar" value="%{#serviceGroupVar}" /></@s.if>
			<@s.else><@s.set var="captionVar" value="%{getText(#serviceGroupVar + ''.name'')}" /></@s.else>
			<div class="tab-pane<@s.if test="#moreStatusVar.first"> active</@s.if>" id="api-flavour-<@s.property value=''%{#captionVar.toLowerCase().replaceAll("[^a-z0-9]", "")}'' />">
			<table class="table table-striped table-bordered table-condensed">
				<caption>
					<@s.property value="#captionVar" />
				</caption>
				<tr>
					<th><@wp.i18n key="ENTANDO_API_SERVICE" /></th>
					<th><@wp.i18n key="ENTANDO_API_DESCRIPTION" /></th>
				</tr>
				<@s.iterator var="serviceVar" value="#servicesByGroupVar" >
					<tr>
						<td class="monospace">
							<@wp.action path="/ExtStr2/do/Front/Api/Service/detail.action" var="detailActionURL">
								<@wp.parameter name="serviceKey"><@s.property value="#serviceVar.key" /></@wp.parameter>
							</@wp.action>
							<a href="${detailActionURL}"><@s.property value="#serviceVar.key" /></a>
						</td>
						<td><@s.property value="#serviceVar.value" /></td>
					</tr>
				</@s.iterator>
			</table>
			</div>
		</@s.if>
	</@s.iterator>
	</div>
</div>
</@s.if>
<@s.else>
<div class="alert alert-block alert-info">
	<p><@wp.')||TO_CLOB('i18n key="ENTANDO_API_NO_SERVICES" escapeXml=false /></p>
</div>
</@s.else>

<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>

</section>'),1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_service_detail','entando_apis',NULL,NULL,TO_CLOB('<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="CSS" info="widgets/api.css"/>
<@s.set var="apiServiceVar" value="%{getApiService(serviceKey)}" />
<div class="entando-api api-resource-detail">
<h2><@wp.i18n key="ENTANDO_API_SERVICE" />&#32;<@s.property value="serviceKey" /></h2>
<@s.if test="hasActionMessages()">
	<div class="message message_confirm">
		<h3><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionErrors()">
	<div class="message message_error">
		<h3><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>

<p class="description"><@s.property value="getTitle(serviceKey, #apiServiceVar.description)" /></p>

<@s.set var="masterMethodVar" value="#apiServiceVar.master" />

<dl class="dl-horizontal">
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_KEY" /></dt>
		<dd><@s.property value="serviceKey" /></dd>
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_PARENT_API" /></dt>
		<dd><@s.property value="#masterMethodVar.description" />&#32;(/<@s.if test="#masterMethodVar.namespace!=null && #masterMethodVar.namespace.length()>0"><@s.property value="#masterMethodVar.namespace" />/</@s.if><@s.property value="#masterMethodVar.resourceName" />)</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_SERVICE_AUTHORIZATION" />
	</dt>
		<dd>
			<@s.if test="%{!#apiServiceVar.requiredAuth}" >
				<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_FREE" />
			</@s.if>
			<@s.elseif test="%{null == #apiServiceVar.requiredPermission && null == #apiServiceVar.requiredGroup}">
				<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_SIMPLE" />
			</@s.elseif>
			<@s.else>
				<@s.set var="serviceAuthGroupVar" value="%{getGroup(#apiServiceVar.requiredGroup)}" />
				<@s.set var="serviceAuthPermissionVar" value="%{getPermission')||TO_CLOB('(#apiServiceVar.requiredPermission)}" />
				<@s.if test="%{null != #serviceAuthPermissionVar}">
					<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_WITH_PERM" />&#32;<@s.property value="#serviceAuthPermissionVar.description" />
				</@s.if>
				<@s.if test="%{null != #serviceAuthGroupVar}">
					<@s.if test="%{null != #serviceAuthPermissionVar}"><br /></@s.if>
					<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_WITH_GROUP" />&#32;<@s.property value="#serviceAuthGroupVar.descr" />
				</@s.if>
			</@s.else>
		</dd>
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_URI" /></dt>
		<dd>
			<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />legacyapi/rs/<@wp.info key="currentLang" />/getService?key=<@s.property value="serviceKey" />"><@wp.info key="systemParam" paramName="applicationBaseURL" />legacyapi/rs/<@wp.info key="currentLang" />/getService?key=<@s.property value="serviceKey" /></a>
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_EXTENSION" />
	</dt>
		<dd>
			<@wp.i18n key="ENTANDO_API_EXTENSION_NOTE" />
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_SERVICE_SCHEMAS" />
	</dt>
		<dd class="schemas">
			<@wp.action path="/ExtStr2/do/Front/Api/Service/responseSchema.action" var="responseSchemaURLVar" >
				<@wp.parameter name="serviceKey"><@s.property value="serviceKey" /></@wp.parameter>
			</@wp.action>
			<a href="${responseSchemaURLVar}" >
				<@wp.i18n key="ENTANDO_API_SERVICE_SCHEMA_RESP" />
			</a>
		</dd>
</dl>

<@s.if test="%{null != #apiServiceVar.freeParameters && #apiServiceVar.freeParameters.length > 0}" >
<table class="table table-striped table-bordered table-condensed" summary="<@wp.i18n key="ENTANDO_API_SERVICE_PARAMETERS_SUMMARY" />">
	<caption><span><@wp.i18n key="ENTANDO_API_SERVICE_PARAMETERS" /></span></caption>
	<tr>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_NAME" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_DESCRIPTION" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_REQUIRED" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_DE')||TO_CLOB('FAULT_VALUE" /></th>
	</tr>
	<@s.iterator value="#apiServiceVar.freeParameters" var="apiParameterNameVar" >
		<@s.set var="apiParameterValueVar" value="%{#apiServiceVar.parameters[#apiParameterNameVar]}" />
		<@s.set var="apiParameterVar" value="%{#apiServiceVar.master.getParameter(#apiParameterNameVar)}" />
		<@s.set var="apiParameterRequiredVar" value="%{#apiParameterVar.required && null == #apiParameterValueVar}" />
		<tr>
			<td><label for="<@s.property value="#apiParameterNameVar" />"><@s.property value="#apiParameterNameVar" /></label></td>
			<td><@s.property value="%{#apiParameterVar.description}" /></td>
			<td class="icon required_<@s.property value="#apiParameterRequiredVar" />">
				<@s.if test="#apiParameterRequiredVar" ><@wp.i18n key="YES" /></@s.if>
				<@s.else><@wp.i18n key="NO" /></@s.else>
			</td>
			<td><@s.if test="null != #apiParameterValueVar"><@s.property value="#apiParameterValueVar" /></@s.if><@s.else>-</@s.else></td>
		</tr>
	</@s.iterator>
</table>
</@s.if>
<p class="api-back">
	<a class="btn btn-primary" href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />"><span class="icon-arrow-left icon-white"></span>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>
</div>'),1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('login_form','login_form',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="RESERVED_AREA" /></h1>
<#if (Session.currentUser.username != "guest") >
	<p><@wp.i18n key="WELCOME" />, <em>${Session.currentUser}</em>!</p>
	<#if (Session.currentUser.entandoUser) >
	<table class="table table-condensed">
		<tr>
			<th><@wp.i18n key="USER_DATE_CREATION" /></th>
			<th><@wp.i18n key="USER_DATE_ACCESS_LAST" /></th>
			<th><@wp.i18n key="USER_DATE_PASSWORD_CHANGE_LAST" /></th>
		</tr>
		<tr>
			<td>${Session.currentUser.creationDate?default("-")}</td>
			<td>${Session.currentUser.lastAccess?default("-")}</td>
			<td>${Session.currentUser.lastPasswordChange?default("-")}</td>
		</tr>
	</table>
		<#if (!Session.currentUser.credentialsNotExpired) >
		<div class="alert alert-block">
			<p><@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD" />: <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/editPassword.action"><@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD_CHANGE" /></a></p>
		</div>
		</#if>
	</#if>
	<@wp.ifauthorized permission="enterBackend">
	<div class="btn-group">
		<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />" class="btn"><@wp.i18n key="ADMINISTRATION" /></a>
	</div>
	</@wp.ifauthorized>
	<p class="pull-right"><a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action" class="btn"><@wp.i18n key="LOGOUT" /></a></p>
	<@wp.pageWithWidget widgetTypeCode="userprofile_editCurrentUser" var="userprofileEditingPageVar" listResult=false />
	<#if (userprofileEditingPageVar??) >
	<p><a href="<@wp.url page="${userprofileEditingPageVar.code}" />" ><@wp.i18n key="userprofile_CONFIGURATION" /></a></p>
	</#if>
<#else>
	<#if (accountExpired?? && accountExpired == true) >
	<div class="alert alert-block alert-error">
		<p><@wp.i18n key="USER_STATUS_EXPIRED" /></p>
	</div>
	</#if>
	<#if (wrongAccountCredential?? && wrongAccountCredential == true) >
	<div class="alert alert-block alert-error">
		<p><@wp.i18n key="USER_STATUS_CREDENTIALS_INVALID" /></p>
	</div>
	</#if>
	<form action="<@wp.url/>" method="post" class="form-horizontal margin-medium-top">
		<#if (RequestParameters.returnUrl??) >
		<input type="hidden" name="returnUrl" value="${RequestParameters.returnUrl}" />
		</#if>
		<div class="control-group">
			<label for="username" class="control-label"><@wp.i18n key="USERNAME" /></label>
			<div class="controls">
				<input id="username" type="text" name="username" class="input-xlarge" />
			</div>
		</div>
		<div class="control-group">
			<label for="password" class="control-label"><@wp.i18n key="PASSWORD" /></label>
			<div class="controls">
				<input id="password" type="password" name="password" class="input-xlarge" />
			</div>
		</div>
		<div class="form-actions">
			<input type="submit" value="<@wp.i18n key="SIGNIN" />" class="btn btn-primary" />
		</div>
	</form>
</#if>',0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('internal_servlet_generic_error',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="GENERIC_ERROR" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('internal_servlet_user_not_allowed',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="USER_NOT_ALLOWED" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('messages_system','messages_system',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<#assign currentPageCode><@wp.currentPage param="code" /></#assign>

<#if (currentPageCode == ''notfound'')>
<div class="alert alert-error alert-block">
	<h1 class="alert-heading"><@wp.i18n key="PAGE_NOT_FOUND" escapeXml=false /></h1>
</div>
</#if>
<#if (currentPageCode == ''errorpage'')>
<div class="alert alert-error alert-block">
	<h1 class="alert-heading"><@wp.i18n key="GENERIC_ERROR" escapeXml=false /></h1>
</div>
</#if>',0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('default_pagerBlock',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<#if (group.size > group.max)>
	<div class="pagination pagination-centered">
		<ul>
		<#if (1 != group.currItem)>
			<#if (group.advanced)>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >1</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_FIRST" />"><i class="icon-fast-backward"></i></a></li>
				<#if (1 != group.beginItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.currItem - group.offset}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_BACKWARD" />&#32;${group.offset}"><i class="icon-step-backward"></i></a></li>
				</#if>
			</#if>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.prevItem}</@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_PREV" /></a></li>
		</#if>
		<#list group.items as item>
		<#if (item_index >= (group.beginItemAnchor-1)) && (item_index <= (group.endItemAnchor-1))>
			<#if (item == group.currItem)>
			<li class="active"><a href="#">${item}</a></li>
			<#else>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${item}</@wp.parameter></@wp.url>">${item}</a></li>
			</#if>
		</#if>
		</#list>
		<#if (group.maxItem != group.currItem)>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.nextItem}</@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_NEXT" /></a></li>
			<#if (group.advanced)>
				<#if (group.maxItem != group.endItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.currItem + group.offset}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_FORWARD" />&#32;${group.offset}"><i class="icon-step-forward"></i></a></li>
				</#if>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.maxItem}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_LAST" />"><i class="icon-fast-forward"></i></a></li>
			</#if>
		</#if>
		</ul>
	</div>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('default_pagerInfo_is',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<p><@s.text name="note.searchIntro" />&#32;<@s.property value="#group.size" />&#32;<@s.text name="note.searchOutro" />.<br />
<@s.text name="label.page" />: [<@s.property value="#group.currItem" />/<@s.property value="#group.maxItem" />].</p>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('default_pagerFormBlock_is',NULL,NULL,NULL,'<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign s=JspTaglibs["/struts-tags"]>
<@s.if test="#group.size > #group.max">
<ul class="pagination">
	<@s.if test="null != #group.pagerId">
		<@s.set var="pagerIdMarker" value="#group.pagerId" />
	</@s.if>
	<@s.else>
		<@s.set var="pagerIdMarker">pagerItem</@s.set>
	</@s.else>
	<@s.if test="#group.advanced">
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_1''}" type="button" disabled="%{1 == #group.currItem}" title="%{getText(''label.goToFirst'')}">
			<span class="icon fa fa-step-backward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#group.currItem - #group.offset) }" type="button" disabled="%{1 == #group.beginItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.backward'')}">
			<span class="icon fa fa-fast-backward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.prevItem}" type="button" title="%{getText(''label.prev.full'')}" disabled="%{1 == #group.currItem}">
			<span class="icon fa fa-long-arrow-left"></span>
		</@wpsf.submit>
	</li>
	<@s.subset source="#group.items" count="#group.endItemAnchor-#group.beginItemAnchor+1" start="#group.beginItemAnchor-1">
		<@s.iterator id="item">
			<li>
				<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #item}" type="button" disabled="%{#item == #group.currItem}">
					<@s.property value="%{#item}" />
				</@wpsf.submit>
			</li>
		</@s.iterator>
	</@s.subset>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.nextItem}" type="button" title="%{getText(''label.next.full'')}" disabled="%{#group.maxItem == #group.currItem}">
			<span class="icon fa fa-long-arrow-right"></span>
		</@wpsf.submit>
	</li>
	<@s.if test="#group.advanced">
	<@s.set var="jumpForwardStep" value="#group.currItem + #group.offset"></@s.set>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#jumpForwardStep)}" type="button" disabled="%{#group.maxItem == #group.endItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.forward'')}">
			<span class="icon fa fa-fast-forward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.size}" type="button" disabled="%{#group.maxItem == #group.currItem}" title="%{getText(''label.goToLast'')}">
			<span class="icon fa fa-step-forward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>
	<@s.set var="pagerIdMarker" value="null" />
</ul>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('search_form','search_form','jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.pageWithWidget var="searchResultPageVar" widgetTypeCode="search_result" />
<@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />
<search-bar-widget
   action-url="<#if (searchResultPageVar??) ><@wp.url page="${searchResultPageVar.code}" /></#if>"
   placeholder="<@wp.i18n key="ESSF_SEARCH" />"
></search-bar-widget>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_EnumerMap',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<select name="${formFieldNameVar}" id="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list userFilterOptionVar.attribute.mapItems as enumeratorMapItemVar>
			<option value="${enumeratorMapItemVar.key}" <#if (formFieldValue??) && (enumeratorMapItemVar.key == formFieldValue)>selected="selected"</#if> >${enumeratorMapItemVar.value}</option>
			</#list>
		</select>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Number',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<fieldset>
<legend>
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>
<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_FROM" />
	</label>
	<div class="controls">
		<input id="${formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilters',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#if (userFilterOptionsVar??) && userFilterOptionsVar?has_content && (userFilterOptionsVar?size > 0)>
<div class="row-fluid"><div class="span12 padding-medium-top">
<#assign hasUserFilterError = false >
<#list userFilterOptionsVar as userFilterOptionVar>
<#if (userFilterOptionVar.formFieldErrors??) && userFilterOptionVar.formFieldErrors?has_content && (userFilterOptionVar.formFieldErrors?size > 0)>
<#assign hasUserFilterError = true >
</#if>
</#list>
<#if (hasUserFilterError)>
<div class="alert alert-error">
	<a class="close" data-dismiss="alert" href="#"><i class="icon-remove"></i></a>
	<h2 class="alert-heading"><@wp.i18n key="ERRORS" /></h2>
	<ul>
		<#list userFilterOptionsVar as userFilterOptionVar>
			<#if (userFilterOptionVar.formFieldErrors??) && (userFilterOptionVar.formFieldErrors?size > 0)>
			<#assign formFieldErrorsVar = userFilterOptionVar.formFieldErrors >
			<#list formFieldErrorsVar?keys as formFieldErrorKey>
			<li>
			<@wp.i18n key="jacms_LIST_VIEWER_FIELD" />&#32;<em>${formFieldErrorsVar[formFieldErrorKey].attributeName}</em><#if (formFieldErrorsVar[formFieldErrorKey].rangeFieldType??)>:&#32;<em><@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].rangeFieldType}" /></em></#if>&#32;<@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].errorKey}" />
			</li>
			</#list>
			</#if>
		</#list>
	</ul>
</div>
</#if>
<#assign hasUserFilterError = false >
<p><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#content-viewer-list-filters"><@wp.i18n key="SEARCH_FILTERS_BUTTON" /> <i class="icon-zoom-in icon-white"></i></button></p>
<form action="<@wp.url />" method="post" class="form-horizontal collapse" id="content-viewer-list-filters">
	<#list userFilterOptionsVar as userFilterOptionVar>
		<@wp.freemarkerTemplateParameter var="userFilterOptionVar" valueName="userFilterOptionVar" removeOnEndTag=true >
		<#if !userFilterOptionVar.attributeFilter && (userFilterOptionVar.key == "fulltext" || userFilterOptionVar.key == "category")>
			<@wp.fragment code="jacms_content_viewer_list_userfilter_met_${userFilterOptionVar.key}" escapeXml=false />
		</#if>
		<#if userFilterOptionVar.attributeFilter >
			<#if userFilterOptionVar.attribute.type == "Monotext" || userFilterOptionVar.attribute.type == "Text" || userFilterOptionVar.attribute.type == "Longtext" || userFilterOptionVar.attribute.type == "Hypertext">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Text" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Enumerator" >
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Enumer" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "EnumeratorMap" >
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_EnumerMap" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Number">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Number" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Date">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Date" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Boolean">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Boolean" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "CheckBox">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_CheckBox" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "ThreeState">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_ThreeSt" escapeXml=false />
			</#if>
		</#if>
		</@wp.freemarkerTemplateParameter>
	</#list>
	<p class="form-actions">
		<input type="submit" value="<@wp.i18n key="SEARCH" />" class="btn btn-primary" />
	</p>
</form>
</div></div>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_met_fulltext',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<div class="control-group">
    <label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="TEXT" /></label>
    <div class="controls">
        <input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
    </div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_met_category',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign userFilterCategoryCodeVar = userFilterOptionVar.userFilterCategoryCode?default("") >
<@wp.categories var="systemCategories" titleStyle="prettyFull" root="${userFilterCategoryCodeVar}" />
<div class="control-group">
	<label for="category" class="control-label"><@wp.i18n key="CATEGORY" /></label>
	<div class="controls">
		<select id="category" name="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list systemCategories as systemCategory>
			<option value="${systemCategory.key}" <#if (formFieldValue == systemCategory.key)>selected="selected"</#if> >${systemCategory.value}</option>
			</#list>
		</select>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Text',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer','content_viewer','jacms',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@jacms.contentInfo param="authToEdit" var="canEditThis" />
<@jacms.contentInfo param="contentId" var="myContentId" />
<#if (canEditThis?? && canEditThis)>
	<style>
		.bar-content-edit {
				position: absolute;
				transform: translate(4px, 20px);
		}
		.bar-content-edit .btn {
				color: white;
				padding: 12px 32px;
				background: #33B5E5;
				text-transform: uppercase;
				text-decoration: none;
				border-radius: 2px;
				box-shadow: 4px 4px 8px 1px rgba(0,0,0,0.5);
		}
		.bar-content-edit-container:not(:hover) .bar-content-edit {
				display: none;
		}
	</style>
	<div class="bar-content-edit-container">
		<div class="bar-content-edit">
			<a href="<@wp.info key="systemParam" paramName="appBuilderBaseURL" />cms/content/edit/<@jacms.contentInfo param="contentId" />" class="btn btn-info">
			<@wp.i18n key="EDIT_THIS_CONTENT" /> <i class="icon-edit icon-white"></i></a>
		</div>
		<@jacms.content publishExtraTitle=true />
	</div>
<#else>
  <@jacms.content publishExtraTitle=true />
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list','content_viewer_list','jacms',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />
<@jacms.contentList listName="contentList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />
<#if (titleVar??)>
	<h1>${titleVar}</h1>
</#if>
<@wp.freemarkerTemplateParameter var="userFilterOptionsVar" valueName="userFilterOptionsVar" removeOnEndTag=true >
<@wp.fragment code="jacms_content_viewer_list_userfilters" escapeXml=false />
</@wp.freemarkerTemplateParameter>
<#if (contentList??) && (contentList?has_content) && (contentList?size > 0)>
	<@wp.pager listName="contentList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
		<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
<#list contentList as contentId>
<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
	<@jacms.content contentId="${contentId}" />
</#if>
</#list>
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
		</@wp.freemarkerTemplateParameter>
	</@wp.pager>
<#else>
		<p class="alert alert-info"><@wp.i18n key="LIST_VIEWER_EMPTY" /></p>
</#if>
<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>">${pageLinkDescriptionVar}</a></p>
</#if>
<#assign contentList="">',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Date',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>

<#assign js_for_datepicker="jQuery(function($){
	$.datepicker.regional[''it''] = {
		closeText: ''Chiudi'',
		prevText: ''&#x3c;Prec'',
		nextText: ''Succ&#x3e;'',
		currentText: ''Oggi'',
		monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
			''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
		monthNamesShort: [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
			''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
		dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
		dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
		dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
		weekHeader: ''Sm'',
		dateFormat: ''yy-mm-dd'',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''''};
});

jQuery(function($){
	if (Modernizr.touch && Modernizr.inputtypes.date) {
		$.each(	$(''input[data-isdate=true]''), function(index, item) {
			item.type = ''date'';
		});
	} else {
		$.datepicker.setDefaults( $.datepicker.regional[''${currentLangVar}''] );
		$(''input[data-isdate=true]'').datepicker({
      			changeMonth: true,
      			changeYear: true,
      			dateFormat: ''yyyy-mm-dd''
    		});
	}
});" >

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />
<fieldset>
<legend>
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>
<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="DATE_FROM" />
	</label>
	<div class="controls">
		<input id="${formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" placeholder="YYYY-MM-DD" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="DATE_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" placeholder="YYYY-MM-DD" />
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Boolean',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />
<div class="control-group">
	<div class="controls">
		<label for="${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
	</div>
	<div class="controls">
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Bool_io',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameControlVar = userFilterOptionVar.formFieldNames[2] >
<input name="${formFieldNameControlVar}" type="hidden" value="true" />
<#assign formFieldNameIgnoreVar = userFilterOptionVar.formFieldNames[1] >
<#assign formFieldIgnoreValue = userFilterOptionVar.getFormFieldValue(formFieldNameIgnoreVar) >
<#assign formFieldControlValue = userFilterOptionVar.getFormFieldValue(formFieldNameControlVar) >
<div class="controls">
	<label for="ignore_${formFieldNameIgnoreVar}" class="checkbox">
	<input id="ignore_${formFieldNameIgnoreVar}" name="${formFieldNameIgnoreVar}" <#if (formFieldIgnoreValue?? && formFieldIgnoreValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
	<@wp.i18n key="IGNORE" /></label>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_CheckBox',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />
<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="checkbox">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
		<@wp.i18n key="YES"/></label>
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_ThreeSt',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />
<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
		<label for="both_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="both_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "both")>checked="checked"</#if> value="both" type="radio" />
		<@wp.i18n key="BOTH"/></label>
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('search_result','search_result','jacms',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="SEARCH_RESULTS" /></h1>
<#if (RequestParameters.search?? && RequestParameters.search!='''')>
<@jacms.searcher listName="contentListResult" />
</#if>
<p><@wp.i18n key="SEARCHED_FOR" />: <em><strong><#if (RequestParameters.search??)>${RequestParameters.search}</#if></strong></em></p>
<#if (contentListResult??) && (contentListResult?has_content) && (contentListResult?size > 0)>
<@wp.pager listName="contentListResult" objectName="groupContent" max=10 pagerIdFromFrame=true advanced=true offset=5>
	<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
	<p><em><@wp.i18n key="SEARCH_RESULTS_INTRO" /> <!-- infamous whitespace hack -->
	${groupContent.size}
	<@wp.i18n key="SEARCH_RESULTS_OUTRO" /> [${groupContent.begin + 1} &ndash; ${groupContent.end + 1}]:</em></p>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<#list contentListResult as contentId>
	<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
		<@jacms.content contentId="${contentId}" modelId="list" />
	</#if>
	</#list>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
</@wp.pager>
<#else>
<p class="alert alert-info"><@wp.i18n key="SEARCH_NOTHING_FOUND" /></p>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_row_content_viewer_list','row_content_viewer_list','jacms',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@jacms.rowContentList listName="contentInfoList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" />
<#if (titleVar??)>
	<h1>${titleVar}</h1>
</#if>
<#if (contentInfoList??) && (contentInfoList?has_content) && (contentInfoList?size > 0)>
	<@wp.pager listName="contentInfoList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
	<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<#list contentInfoList as contentInfoVar>
	<#if (contentInfoVar_index >= groupContent.begin) && (contentInfoVar_index <= groupContent.end)>
		<#if (contentInfoVar[''modelId'']??)>
		<@jacms.content contentId="${contentInfoVar[''contentId'']}" modelId="${contentInfoVar[''modelId'']}" />
		<#else>
		<@jacms.content contentId="${contentInfoVar[''contentId'']}" />
		</#if>
	</#if>
	</#list>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
	</@wp.pager>
</#if>
<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>">${pageLinkDescriptionVar}</a></p>
</#if>
<#assign contentInfoList="">',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('breadcrumb','breadcrumb',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.currentPage param="code" var="currentViewCode" />

<div class="navbar-position">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">

            <span class="noscreen">
                <@wp.i18n key="ESNB_YOU_ARE_HERE" />
            </span>
            <#assign first=true>
            <@wp.nav spec="current.path" var="currentTarget">
            <#assign currentCode=currentTarget.code>

            <!--            <#if first>
                        <span class="divider">/</span>
                        </#if>-->

            <#if !currentTarget.voidPage>
            <#if (currentCode == currentViewCode)>
            <li class="breadcrumb-item active" aria-current="page">${currentTarget.title}</li>
            <#else>
            <li class="breadcrumb-item">
                <a href="${currentTarget.url}">${currentTarget.title}</a>
            </li>
            </#if>
            <#else>
            ${currentTarget.title}
            </#if>
            <#assign first=false>
            </@wp.nav>
        </ol>
    </nav>
</div>
',NULL,1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('logo','logo',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<@wp.info key="systemParam" paramName="applicationBaseURL" var="appUrl" />
<img src="${appUrl}resources/static/img/Entando_light.svg" aria-label="Entando" alt="Logo" role="logo" />','<#assign wp=JspTaglibs["/aps-core"]>

<@wp.info key="systemParam" paramName="applicationBaseURL" var="appUrl" />
<img src="${appUrl}resources/static/img/Entando_light.svg" aria-label="Entando" alt="Entando" role="logo" />',0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('language','language',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />

<@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />

<#assign langstrs = [] />
<#list langsVar as curLangVar>
  <#assign langurl><@wp.url lang="${curLangVar.code}" paramRepeat=true /></#assign>
  <#assign langdesc><@wp.i18n key="LANG_${curLangVar.code?upper_case}" /></#assign>
  <#assign langstr = ["{\"code\": \"" + curLangVar.code + "\", \"descr\": \"" + langdesc + "\", \"url\": \""+ langurl +"\"}"]  />
  <#assign langstrs = langstrs + langstr />
</#list>
<#assign lang_json_string = langstrs?join(", ") />

<choose-language-widget
  currentLang="${currentLangVar}"
  languages="[${lang_json_string?html}]"
></choose-language-widget>','<#assign wp=JspTaglibs["/aps-core"]>

<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />

<@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />

<#assign langstrs = [] />
<#list langsVar as curLangVar>
  <#assign langurl><@wp.url lang="${curLangVar.code}" paramRepeat=true /></#assign>
  <#assign langstr = ["{\"code\": \"" + curLangVar.code + "\", \"descr\": \"" + curLangVar.descr + "\", \"url\": \""+ langurl +"\"}"]  />
  <#assign langstrs = langstrs + langstr />
</#list>
<#assign lang_json_string = langstrs?join(", ") />

<choose-language-widget
  currentLang="${currentLangVar}"
  languages="[${lang_json_string?html}]"
></choose-language-widget>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('keycloak-login','keycloak-login',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />

<#assign sessionUser = "" />
<#assign userDisplayName = "" />
<#if (Session.currentUser.username != "guest") >
   <#assign sessionUser = Session.currentUser.username />
   <#if (Session.currentUser.profile??) && (Session.currentUser.profile.displayName??)>
      <#assign userDisplayName = Session.currentUser.profile.displayName />
   <#else>
      <#assign userDisplayName = Session.currentUser />
   </#if>
</#if>

<login-button-widget
   admin-url="<@wp.info key="systemParam" paramName="appBuilderBaseURL" />"
   user-display-name="${userDisplayName}"
   redirect-url="<@wp.url baseUrlMode="requestIfRelative" />"
></login-button-widget>','<#assign wp=JspTaglibs["/aps-core"]>

<@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />

<#assign sessionUser = "" />
<#assign userDisplayName = "" />
<#if (Session.currentUser.username != "guest") >
   <#assign sessionUser = Session.currentUser.username />
   <#if (Session.currentUser.profile??) && (Session.currentUser.profile.displayName??)>
      <#assign userDisplayName = Session.currentUser.profile.displayName />
   <#else>
      <#assign userDisplayName = Session.currentUser />
   </#if>
</#if>

<login-button-widget
   admin-url="<@wp.info key="systemParam" paramName="appBuilderBaseURL" />"
   user-display-name="${userDisplayName}"
   redirect-url="<@wp.url baseUrlMode="requestIfRelative" />"
></login-button-widget>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('navigation-menu','navigation-menu',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<@wp.currentPage param="code" var="currentPageCode" />

<@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />

<#assign navstrs = [] />
<@wp.nav var="page">
  <#assign navstr = ["{\"code\": \"" + page.code + "\", \"title\": \"" + page.title + "\", \"level\": \"" + page.level + "\", \"url\": \""+ page.url +"\", \"voidPage\": " + page.voidPage?string("true", "false") + "}"]  />
  <#assign navstrs = navstrs + navstr />
</@wp.nav>
<#assign nav_json_string = navstrs?join(", ") />

<navigation-bar-widget
  current-page="${currentPageCode}"
  nav-items="[${nav_json_string?html}]"
></navigation-bar-widget>','<#assign wp=JspTaglibs["/aps-core"]>

<@wp.currentPage param="code" var="currentPageCode" />

<@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />

<#assign navstrs = [] />
<@wp.nav var="page">
  <#assign navstr = ["{\"code\": \"" + page.code + "\", \"title\": \"" + page.title + "\", \"level\": \"" + page.level + "\", \"url\": \""+ page.url +"\", \"voidPage\": " + page.voidPage?string("true", "false") + "}"]  />
  <#assign navstrs = navstrs + navstr />
</@wp.nav>
<#assign nav_json_string = navstrs?join(", ") />

<navigation-bar-widget
  current-page="${currentPageCode}"
  nav-items="[${nav_json_string?html}]"
></navigation-bar-widget>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('sitemap','sitemap',NULL,NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@jacms.contentList listName="contentList" contentType="NWS" />
<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<link rel="stylesheet" type="text/css" href="<@wp.resourceURL />ootb-widgets/static/css/sitemap.css">

<div class="well well-small sitemap">
<h2>Sitemap</h2>

<ul class="nav nav-list">
<@wp.nav spec="code(homepage).subtree(50)" var="page">
   <#if (previousPage?? && previousPage.code??)>
	<#assign previousLevel=previousPage.level>
	<#assign level=page.level>
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.fragment code="sitemap_menu_include" escapeXml=false />
   </#if>
   <@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>
<#if (previousPage??)>
   <#assign previousLevel = previousPage.level>
   <#assign level=0>
   <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
   <@wp.freemarkerTemplateParameter var="level" valueName="level" />
   <@wp.fragment code="sitemap_menu_include" escapeXml=false />
   <#if (previousLevel != 0)>
	<#list 0..(previousLevel - 1) as ignoreMe>
		</ul></li>
	</#list>
   </#if>
</#if>
<ul class="nav nav-list">
     <li class="nav-header">
     <strong>News</strong>
<ul class="nav-list">
<#list contentList as contentId>
	<@jacms.content contentId="${contentId}" modelId="10020" />
</#list>
</ul>
</li>
</ul>
</div>
<@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />
',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('sitemap_menu_include',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign liClass="">
<#assign aClass="">
<#if previousPage.voidPage>
 <#assign liClass='' class="nav-header" ''>
    <#assign aClass='' class="a-void" ''>
</#if>
<li ${liClass}>
<#if previousLevel != 0>
<#if (!previousPage.voidPage)>
<a href="${previousPage.url}"  ${aClass}>
<#else>
<a ${aClass}>
</#if>
${previousPage.title}</a>
<#else>
<strong>Pages</strong>
</#if>
<#if (previousLevel == level)>
</li>
</#if>
<#if (previousLevel < level)>
<ul class="nav-list">
</#if>
<#if (previousLevel > level)>
<#list 1..(previousLevel - level) as ignoreMe>
</li></ul>
</#list>
</#if>
',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando_ootb_carbon_include',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<script src="<@wp.resourceURL />ootb-widgets/static/js/2.ootb.chunk.js" nonce="<@wp.cspNonce />"></script>
<script src="<@wp.resourceURL />ootb-widgets/static/js/main.ootb.chunk.js" nonce="<@wp.cspNonce />"></script>
<script src="<@wp.resourceURL />ootb-widgets/static/js/runtime-main.ootb.js" nonce="<@wp.cspNonce />"></script>
<link href="<@wp.resourceURL />ootb-widgets/static/css/main.ootb.chunk.css" rel="stylesheet">
',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('keycloak_auth_with_redirect',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<script nonce="<@wp.cspNonce />" >
  (function () {
    const consolePrefix = ''[ENTANDO-KEYCLOAK]'';
    const keycloakConfigEndpoint = ''<@wp.info key="systemParam" paramName="applicationBaseURL" />keycloak.json'';
    let keycloakConfig;
    function dispatchKeycloakEvent(eventType) {
      console.info(consolePrefix, ''Dispatching'', eventType, ''custom event'');
      return window.dispatchEvent(new CustomEvent(''keycloak'', { detail: { eventType } }));
    };
    function initKeycloak() {
      const keycloak = new Keycloak(keycloakConfig);
      keycloak.onReady = function() {
        dispatchKeycloakEvent(''onReady'');
      };
      keycloak.onAuthSuccess = function() {
        dispatchKeycloakEvent(''onAuthSuccess'');
      };
      keycloak.onAuthError = function() {
        dispatchKeycloakEvent(''onAuthError'');
      };
      keycloak.onAuthRefreshSuccess = function() {
        dispatchKeycloakEvent(''onAuthRefreshSuccess'');
      };
      keycloak.onAuthRefreshError = function() {
        dispatchKeycloakEvent(''onAuthRefreshError'');
      };
      keycloak.onAuthLogout = function() {
        dispatchKeycloakEvent(''onAuthLogout'');
      };
      keycloak.onTokenExpired = function() {
        dispatchKeycloakEvent(''onTokenExpired'');
      };
      window.entando = {
        ...(window.entando || {}),
        keycloak,
      };
      window.entando.keycloak
        .init({ onLoad: ''login-required'', promiseType: ''native'', enableLogging: true })
        .catch(function (e) {
          console.error(e);
          console.error(consolePrefix, ''Failed to initialize Keycloak'');
        });
    };
    function onKeycloakScriptError(e) {
      console.error(e);
      console.error(consolePrefix, ''Failed to load keycloak.js script'');
    };
    function addKeycloakScript(keycloakConfig) {
      const script = document.createElement(''script'');
      script.src = keycloakConfig[''auth-server-url''] + ''/js/keycloak.js'';
      script.async = true;
      script.addEventListener(''load'', initKeycloak);
      script.addEventListener(''error'', onKeycloakScriptError);
      document.body.appendChild(script);
    };
    fetch(keycloakConfigEndpoint)
      .then(function (response) {
        return response.json();
      })
      .then(function (config) {
        keycloakConfig = config;
        if (!keycloakConfig.clientId) {
          keycloakConfig.clientId = keycloakConfig.resource;
        }
        addKeycloakScript(keycloakConfig);
      })
      .catch(function (e) {
        console.error(e);
        console.error(consolePrefix, ''Failed to fetch Keycloak configuration'');
      });
  })();</script>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('keycloak_auth',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<script nonce="<@wp.cspNonce />" >
  (function () {
    const consolePrefix = ''[ENTANDO-KEYCLOAK]'';
    const keycloakConfigEndpoint = ''<@wp.info key="systemParam" paramName="applicationBaseURL" />keycloak.json'';
    let keycloakConfig;
    function dispatchKeycloakEvent(eventType) {
      console.info(consolePrefix, ''Dispatching'', eventType, ''custom event'');
      return window.dispatchEvent(new CustomEvent(''keycloak'', { detail: { eventType } }));
    };
    function initKeycloak() {
      const keycloak = new Keycloak(keycloakConfig);
      keycloak.onReady = function() {
        dispatchKeycloakEvent(''onReady'');
      };
      keycloak.onAuthSuccess = function() {
        dispatchKeycloakEvent(''onAuthSuccess'');
      };
      keycloak.onAuthError = function() {
        dispatchKeycloakEvent(''onAuthError'');
      };
      keycloak.onAuthRefreshSuccess = function() {
        dispatchKeycloakEvent(''onAuthRefreshSuccess'');
      };
      keycloak.onAuthRefreshError = function() {
        dispatchKeycloakEvent(''onAuthRefreshError'');
      };
      keycloak.onAuthLogout = function() {
        dispatchKeycloakEvent(''onAuthLogout'');
      };
      keycloak.onTokenExpired = function() {
        dispatchKeycloakEvent(''onTokenExpired'');
      };
      function onKeycloakInitialized(isAuthenticated) {
        if (isAuthenticated) {
          console.info(consolePrefix, ''Keycloak initialized, user authenticated'');
        } else {
          console.info(consolePrefix, ''Keycloak initialized, user not authenticated'');
        }
      };
      window.entando = {
        ...(window.entando || {}),
        keycloak,
      };
      window.entando.keycloak
        .init({ onLoad: ''check-sso'', promiseType: ''native'', enableLogging: true })
        .then(onKeycloakInitialized)
        .catch(function (e) {
          console.error(e);
          console.error(consolePrefix, ''Failed to initialize Keycloak'');
        });
    };
    function onKeycloakScriptError(e) {
      console.error(e);
      console.error(consolePrefix, ''Failed to load keycloak.js script'');
    };
    function addKeycloakScript(keycloakConfig) {
      const script = document.createElement(''script'');
      script.src = keycloakConfig[''auth-server-url''] + ''/js/keycloak.js'';
      script.async = true;
      script.addEventListener(''load'', initKeycloak);
      script.addEventListener(''error'', onKeycloakScriptError);
      document.body.appendChild(script);
    };
    fetch(keycloakConfigEndpoint)
      .then(function (response) {
        return response.json();
      })
      .then(function (config) {
        keycloakConfig = config;
        if (!keycloakConfig.clientId) {
          keycloakConfig.clientId = keycloakConfig.resource;
        }
        addKeycloakScript(keycloakConfig);
      })
      .catch(function (e) {
        console.error(e);
        console.error(consolePrefix, ''Failed to fetch Keycloak configuration'');
      });
  })();</script>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jpseo_content_viewer','jpseo_content_viewer','jpseo',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign jpseo=JspTaglibs["/jpseo-aps-core"]>
<@jacms.contentInfo param="authToEdit" var="canEditThis" />
<@jacms.contentInfo param="contentId" var="myContentId" />
<#if (canEditThis?? && canEditThis)>
	<div class="bar-content-edit">
		<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/jacms/Content/edit.action?contentId=<@jacms.contentInfo param="contentId" />" class="btn btn-info">
		<@wp.i18n key="EDIT_THIS_CONTENT" /> <i class="icon-edit icon-white"></i></a>
	</div>
</#if>
<@jpseo.content publishExtraTitle=true publishExtraDescription=true />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jpseo_model_meta_info',NULL,'jpseo',NULL,'<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign jpseo=JspTaglibs["/jpseo-aps-core"]>

<@jpseo.currentPage param="description" var="metaDescrVar" />
<#if (metaDescrVar??)>
<meta name="description" content="<@c.out value="${metaDescrVar}" />" />
</#if>

<#-- EXAMPLE OF meta infos on page -->
<#--
<@jpseo.seoMetaTag key="author" var="metaAuthorVar" />
<#if (metaAuthorVar??)>
<meta name="author" content="<@c.out value="${metaAuthorVar}" />" />
</#if>

<@jpseo.seoMetaTag key="keywords" var="metaKeywords" />
<#if (metaKeywords??)>
<meta name="keywords" content="<@c.out value="${metaKeywords}" />" />
</#if>
-->
',1);

INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('messages_system','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Messages</property>
<property key="it">Messaggi di Sistema</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'system','font-awesome:fa-envelope-square');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('login_form','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Legacy Login Form</property>
<property key="it">Form di Login Legacy</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'system','font-awesome:fa-sign-in');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Internal Servlet</property>
<property key="it">Invocazione di una Servlet Interna</property>
</properties>','<config>
	<parameter name="actionPath">
		Path to an action or to a JSP. You must prepend ''/ExtStr2'' to any Struts2 action path
	</parameter>
	<action name="configSimpleParameter"/>
</config>',NULL,NULL,NULL,1,NULL,NULL,NULL,0,'system','asset:ent-form-action');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('entando_apis','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">APIs</property>
<property key="it">APIs</property>
</properties>
',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/Api/Resource/list.action</property>
</properties>
',1,'free',NULL,NULL,1,'system','asset:ent-entando-apis');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('userprofile_editCurrentUser','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Profile and Password</property>
<property key="it">Edita Profilo e Password</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/edit.action</property>
</properties>',1,NULL,NULL,NULL,1,'user','asset:ent-user-profile-edit');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('userprofile_editCurrentUser_password','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit User Password</property>
<property key="it">Edita Password Utente</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/editPassword.action</property>
</properties>',1,NULL,NULL,NULL,1,'user','font-awesome:fa-key');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('userprofile_editCurrentUser_profile','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit User Profile</property>
<property key="it">Edita Profilo Utente</property>
</properties>',NULL,NULL,'formAction','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/Profile/edit.action</property>
</properties>',1,NULL,NULL,NULL,1,'user','font-awesome:fa-address-card');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('search_form','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Form</property>
<property key="it">Barra ricerca</property>
</properties>',NULL,'jacms',NULL,NULL,0,'free',NULL,NULL,0,'cms','font-awesome:fa-search');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content</property>
<property key="it">Singolo Contenuto</property>
</properties>','<config>
	<parameter name="contentId">Content ID</parameter>
	<parameter name="modelId">Content Model ID</parameter>
	<action name="viewerConfig"/>
</config>','jacms',NULL,NULL,1,NULL,NULL,NULL,0,'cms','asset:ent-content-viewer');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('search_result','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Results</property>
<property key="it">Risultati della Ricerca</property>
</properties>',NULL,'jacms',NULL,NULL,1,NULL,NULL,NULL,0,'cms','font-awesome:fa-list');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content Search Query</property>
<property key="it">Elenco dinamico di contenuti</property>
</properties>','<config>
	<parameter name="contentType">Content Type (mandatory)</parameter>
	<parameter name="modelId">Content Model</parameter>
	<parameter name="userFilters">Front-End user filter options</parameter>
	<parameter name="category">Content Category **deprecated**</parameter>
	<parameter name="categories">Content Category codes (comma separeted)</parameter>
	<parameter name="orClauseCategoryFilter" />
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="maxElements">Number of contents</parameter>
	<parameter name="filters" />
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="listViewerConfig"/>
</config>','jacms',NULL,NULL,1,NULL,NULL,NULL,0,'cms','font-awesome:fa-filter');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('row_content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content List</property>
<property key="it">Elenco di Contenuti</property>
</properties>','<config>
	<parameter name="contents">Contents to Publish (mandatory)</parameter>
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="rowListViewerConfig" />
</config>','jacms',NULL,NULL,1,'free',NULL,NULL,0,'cms','font-awesome:fa-list-alt');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('breadcrumb','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Breadcrumbs</property>
<property key="it">Briciole di pane</property>
</properties>',NULL,NULL,NULL,NULL,1,'free',NULL,NULL,0,'navigation','asset:ent-breadcrumb');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('logo','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Logo</property>
<property key="it">Logo</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'page','font-awesome:fa-cube');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('language','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Language</property>
<property key="it">Linguaggio</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'page','font-awesome:fa-language');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('keycloak-login','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Login</property>
<property key="it">Login</property>
</properties>',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'system','font-awesome:fa-sign-in');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('navigation-menu','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation Menu</property>
<property key="it">Menu di Navigazione</property>
</properties>','<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>',NULL,NULL,NULL,1,NULL,NULL,NULL,0,'navigation','font-awesome:fa-bars');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('sitemap','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sitemap</property>
<property key="it">Mappa del Sito</property>
</properties>',NULL,NULL,NULL,NULL,1,'free',NULL,NULL,0,'navigation','font-awesome:fa-sitemap');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('NWS_Latest','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Latest</property>
<property key="it">Notizie Ultime</property>
</properties>',NULL,NULL,'content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElements">4</property>
<property key="filters">(order=DESC;attributeFilter=true;key=date)</property>
<property key="title_it">Notizie</property>
<property key="linkDescr_it">Archivio</property>
<property key="pageLink">news</property>
<property key="title_en">News</property>
<property key="contentType">NWS</property>
<property key="modelId">10022</property>
<property key="linkDescr_en">Archive</property>
</properties>',0,NULL,NULL,NULL,0,'cms','asset:ent-nws-latest');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('NWS_Archive','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">Notizie Archivio</property>
</properties>',NULL,NULL,'content_viewer_list','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">10</property>
<property key="title_it">Archivio Notizie</property>
<property key="userFilters">(attributeFilter=false;key=fulltext)+(attributeFilter=true;key=date)</property>
<property key="filters">(order=DESC;attributeFilter=true;key=date)</property>
<property key="title_en">News Archive</property>
<property key="contentType">NWS</property>
<property key="modelId">10021</property>
</properties>',0,NULL,NULL,NULL,0,'cms','font-awesome:fa-archive');
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid,readonlypagewidgetconfig,widgetcategory,icon) VALUES ('jpseo_content_viewer','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content SEO Meta-description</property>
<property key="it">Content SEO Meta-description</property>
</properties>','<config>
	<parameter name="contentId">Content ID</parameter>
	<parameter name="modelId">Content Model ID</parameter>
	<action name="viewerConfig"/>
</config>','jpseo',NULL,NULL,1,NULL,NULL,NULL,0,'seo','asset:ent-jpseo-content-viewer');

INSERT INTO workcontentsearch (contentid,attrname,textvalue,datevalue,numvalue,langcode) VALUES ('NWS4','date',NULL,TO_DATE('2020-08-31 22:00:00','YYYY-MM-DD HH24:MI:SS'),NULL,NULL);
INSERT INTO workcontentsearch (contentid,attrname,textvalue,datevalue,numvalue,langcode) VALUES ('NWS4','title','Why You Need a Micro Frontend Platform for Kubernetes',NULL,NULL,'en');
INSERT INTO workcontentsearch (contentid,attrname,textvalue,datevalue,numvalue,langcode) VALUES ('NWS4','title','Why You Need a Micro Frontend Platform for Kubernetes',NULL,NULL,'it');
INSERT INTO workcontentsearch (contentid,attrname,textvalue,datevalue,numvalue,langcode) VALUES ('NWS5','date',NULL,TO_DATE('2020-09-03 22:00:00','YYYY-MM-DD HH24:MI:SS'),NULL,NULL);
INSERT INTO workcontentsearch (contentid,attrname,textvalue,datevalue,numvalue,langcode) VALUES ('NWS5','title','Entando and JHipster: How It Works',NULL,NULL,'en');
INSERT INTO workcontentsearch (contentid,attrname,textvalue,datevalue,numvalue,langcode) VALUES ('NWS5','title','Entando and JHipster: How It Works',NULL,NULL,'it');
INSERT INTO workcontentsearch (contentid,attrname,textvalue,datevalue,numvalue,langcode) VALUES ('TCL6','title','About Us',NULL,NULL,'en');
INSERT INTO workcontentsearch (contentid,attrname,textvalue,datevalue,numvalue,langcode) VALUES ('TCL6','title','About Us',NULL,NULL,'it');

INSERT INTO actionlogrecords (id,username,actiondate,namespace,actionname,parameters,activitystreaminfo,updatedate) VALUES (1,'admin',TO_DATE('2013-09-27 10:58:38','YYYY-MM-DD HH24:MI:SS'),'/do/Page','save','selectedNode=service
model=service
strutsAction=1
extraGroupName=free
charset=
parentPageCode=service
defaultShowlet=true
copyPageCode=
langit=Accedi
groupSelectLock=false
langen=Sign In
group=free
mimeType=
pageCode=sign_in
','<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<activityStreamInfo>
    <objectTitles>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">en</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Sign In</value>
        </entry>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">it</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Accedi</value>
        </entry>
    </objectTitles>
    <groups>
        <group>free</group>
    </groups>
    <actionType>1</actionType>
    <linkNamespace>/do/Page</linkNamespace>
    <linkActionName>edit</linkActionName>
    <linkParameters>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">selectedNode</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">sign_in</value>
        </entry>
    </linkParameters>
    <linkAuthPermission>managePages</linkAuthPermission>
    <linkAuthGroup>free</linkAuthGroup>
</activityStreamInfo>
',TO_DATE('2013-09-27 10:58:38','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO actionlogrecords (id,username,actiondate,namespace,actionname,parameters,activitystreaminfo,updatedate) VALUES (2,'admin',TO_DATE('2013-09-27 11:00:12','YYYY-MM-DD HH24:MI:SS'),'/do/Page','save','selectedNode=service
model=service
strutsAction=1
extraGroupName=free
charset=
parentPageCode=service
defaultShowlet=true
copyPageCode=
langit=Pagina non trovata
groupSelectLock=false
langen=Page not found
group=free
mimeType=
pageCode=notfound
','<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<activityStreamInfo>
    <objectTitles>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">en</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Page not found</value>
        </entry>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">it</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Pagina non trovata</value>
        </entry>
    </objectTitles>
    <groups>
        <group>free</group>
    </groups>
    <actionType>1</actionType>
    <linkNamespace>/do/Page</linkNamespace>
    <linkActionName>edit</linkActionName>
    <linkParameters>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">selectedNode</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">notfound</value>
        </entry>
    </linkParameters>
    <linkAuthPermission>managePages</linkAuthPermission>
    <linkAuthGroup>free</linkAuthGroup>
</activityStreamInfo>
',TO_DATE('2013-09-27 11:00:12','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO actionlogrecords (id,username,actiondate,namespace,actionname,parameters,activitystreaminfo,updatedate) VALUES (3,'admin',TO_DATE('2013-09-27 11:00:12','YYYY-MM-DD HH24:MI:SS'),'/do/Page','save','selectedNode=service
model=service
strutsAction=1
extraGroupName=free
charset=
parentPageCode=service
defaultShowlet=true
copyPageCode=
langit=Errore di Sistema
groupSelectLock=false
langen=System Error
group=free
mimeType=
pageCode=errorpage
','<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<activityStreamInfo>
    <objectTitles>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">en</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">System Error</value>
        </entry>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">it</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Errore di Sistema</value>
        </entry>
    </objectTitles>
    <groups>
        <group>free</group>
    </groups>
    <actionType>1</actionType>
    <linkNamespace>/do/Page</linkNamespace>
    <linkActionName>edit</linkActionName>
    <linkParameters>
        <entry>
            <key xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">selectedNode</key>
            <value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">errorpage</value>
        </entry>
    </linkParameters>
    <linkAuthPermission>managePages</linkAuthPermission>
    <linkAuthGroup>free</linkAuthGroup>
</activityStreamInfo>
',TO_DATE('2013-09-27 11:00:12','YYYY-MM-DD HH24:MI:SS'));

INSERT INTO authusershortcuts (username,config) VALUES ('admin','<?xml version="1.0" encoding="UTF-8"?>
<shortcuts>
	<box pos="0">core.component.user.list</box>
	<box pos="1">core.component.categories</box>
	<box pos="2">core.component.labels.list</box>
	<box pos="3"></box>
	<box pos="4">jacms.content.list</box>
	<box pos="5">jacms.contentType</box>
	<box pos="6">core.portal.pageTree</box>
	<box pos="7">core.portal.widgetType</box>
	<box pos="8">core.tools.entities</box>
	<box pos="9">core.tools.setting</box>
</shortcuts>
');

INSERT INTO authroles (rolename,descr) VALUES ('admin','Administrator');
INSERT INTO authroles (rolename,descr) VALUES ('editor','Editor');
INSERT INTO authroles (rolename,descr) VALUES ('approver','Approver');
INSERT INTO authroles (rolename,descr) VALUES ('reviewer','Reviewer');

INSERT INTO authusers (username,passwd,registrationdate,lastaccess,lastpasswordchange,active) VALUES ('admin','{bcrypt}$2a$10$TMRaAmZE4w5LEeELdmpJguuSuJc2D9hUelMGmsJyK35K3PBiePqXu',TO_DATE('2008-10-10 00:00:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2022-06-24 00:00:00','YYYY-MM-DD HH24:MI:SS'),NULL,1);

INSERT INTO authpermissions (permissionname,descr) VALUES ('superuser','All functions');
INSERT INTO authpermissions (permissionname,descr) VALUES ('validateContents','Content Supervision');
INSERT INTO authpermissions (permissionname,descr) VALUES ('manageResources','Asset Editing');
INSERT INTO authpermissions (permissionname,descr) VALUES ('managePages','Operations on Pages');
INSERT INTO authpermissions (permissionname,descr) VALUES ('enterBackend','Access to Administration Area');
INSERT INTO authpermissions (permissionname,descr) VALUES ('manageCategories','Operations on Categories');
INSERT INTO authpermissions (permissionname,descr) VALUES ('editContents','Content Editing');
INSERT INTO authpermissions (permissionname,descr) VALUES ('viewUsers','View Users and Profiles');
INSERT INTO authpermissions (permissionname,descr) VALUES ('editUsers','User Management');
INSERT INTO authpermissions (permissionname,descr) VALUES ('editUserProfile','User Profile Editing');
INSERT INTO authpermissions (permissionname,descr) VALUES ('manageReview','Review Management');
INSERT INTO authpermissions (permissionname,descr) VALUES ('enterECR','ECR Access Permission');

INSERT INTO authusergrouprole (username,groupname,rolename) VALUES ('admin','administrators','admin');


INSERT INTO authgroups (groupname,descr) VALUES ('administrators','Administrators');
INSERT INTO authgroups (groupname,descr) VALUES ('free','Free Access');

INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('admin','superuser');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('editor','enterBackend');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('editor','editContents');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('editor','manageResources');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('editor','manageCategories');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('approver','enterBackend');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('approver','editContents');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('approver','managePages');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('approver','manageResources');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('approver','manageCategories');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('approver','validateContents');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('reviewer','enterBackend');
INSERT INTO authrolepermissions (rolename,permissionname) VALUES ('reviewer','manageReview');

INSERT INTO api_oauth_consumers (consumerkey,consumersecret,name,description,callbackurl,scope,authorizedgranttypes,expirationdate,issueddate) VALUES ('appbuilder','{bcrypt}$2a$10$axXuJXKHzgdmwQzBR3wvh.oSiiJp6On1pHxJgaBmwkRXnXqYqjhkK','Entando AppBuilder','Default Entando AppBuilder Consumer',NULL,'read,write,trust','password,authorization_code,refresh_token,implicit',TO_DATE('2028-10-10 00:00:00','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2008-01-01 00:00:00','YYYY-MM-DD HH24:MI:SS'));

INSERT INTO authuserprofiles (username,profiletype,profilexml,publicprofile) VALUES ('admin','PFL','<?xml version="1.0" encoding="UTF-8"?>
<profile id="admin" typecode="PFL" typedescr="Default user profile"><descr /><groups /><categories /><attributes><attribute name="fullname" attributetype="Monotext" /><attribute name="email" attributetype="Monotext" /></attributes></profile>
',0);

INSERT INTO actionlogrelations (recordid,refgroup) VALUES (1,'free');
INSERT INTO actionlogrelations (recordid,refgroup) VALUES (2,'free');
INSERT INTO actionlogrelations (recordid,refgroup) VALUES (3,'free');

