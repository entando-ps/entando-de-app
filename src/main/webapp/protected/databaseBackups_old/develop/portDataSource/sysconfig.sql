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
			<attribute name="email" attributetype="Monotext" description="Email" searchable="true">
				<validations>
					<required>true</required>
					<regexp><![CDATA[.+@.+.[a-z]+]]></regexp>
				</validations>
				<roles>
					<role>userprofile:email</role>
				</roles>
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>

');
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
</Dimensions>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','langs','Definition of the system languages','<?xml version="1.0" encoding="UTF-8"?>
<Langs>
  <Lang>
    <code>en</code>
    <descr>English</descr>
    <default>true</default>
  </Lang>
  <Lang>
    <code>it</code>
    <descr>Italian</descr>
  </Lang>
</Langs>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','contentTypes','Definition of the Content Types','<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="ANN" typedescr="Announcement" viewpage="announcements_read" listmodel="10051" defaultmodel="10005">
		<attributes>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="StartDate" attributetype="Date" description="Start Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="EndDate" attributetype="Date" description="End Date" searcheable="true">
				<validations>
					<required>true</required>
					<rangestart attribute="StartDate" />
				</validations>
			</attribute>
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="announcements_read" listmodel="10011" defaultmodel="10001">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="DLD" typedescr="Download Card" viewpage="download" listmodel="10031" defaultmodel="10003">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="File" attributetype="Attach">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="ShortDescr" attributetype="Hypertext" description="Short Description" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="LongDescr" attributetype="Hypertext" description="Long Description" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
		</attributes>
	</contenttype>
	<contenttype typecode="NWS" typedescr="News" viewpage="news_read" listmodel="10021" defaultmodel="10002">
		<attributes>
			<attribute name="Date" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT">
				<validations />
			</attribute>
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="RSL" typedescr="Resolution" viewpage="resolutions_read" listmodel="10041" defaultmodel="10004">
		<attributes>
			<attribute name="Number" attributetype="Number" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Date" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jacms_resourceMetadataMapping','Mapping between resource Metadata and resource attribute fields','<mapping>
    <field key="alt"></field>
    <field key="description"></field>
    <field key="legend"></field>
    <field key="title"></field>
</mapping>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','subIndexDir','Name of the sub-directory containing content indexing files','indexdir20140703142340');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataTypeDefinitions','Definition of the Type Types','<datatypes />');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataobjectsubdir','Name of the sub-directory containing dataobject indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','params','Configuration params.','<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">breadcrumbs</Param>
	<Param name="hypertextEditor">fckeditor</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<Param name="firstTimeMessages">false</Param>
	<Param name="useJsessionId">false</Param>
	<Param name="baseUrl">request</Param>
	<Param name="baseUrlContext">true</Param>
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
		<Param name="legacyPasswordsUpdated">true</Param>
		<Param name="page_preview_hash">Af1i6RaACVRJiVZsRopr</Param>
	</ExtraParams>
</Params>

');
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
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpcontentworkflow_config','Workflow - Configurazione Workflow Contenuti','<contenttypes/>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpcontentworkflow_notifierConfig','Workflow - Servizio Notifica Cambio Stato Contenuti','<?xml version="1.0" encoding="UTF-8"?>
<notifierConfig>
	<scheduler>
		<active value="true" />
		<delay value="24" />
		<start value="20/11/2009 10:08" />
	</scheduler>
	<mail senderCode="CODE1" mailAttributeName="email" html="true">
		<subject><![CDATA[[Subject]: Insert your subject]]></subject>
		<header><![CDATA[<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="it">
<head><style type="text/css">.body {padding: 1em;} body {color:#333333;font-family:Verdana,Arial,sans-serif;font-size:100.01%;margin: 0 auto;max-width: 1200px;} .header {padding: 1em; background-color: #E5ECFA;color: #0F4780; border-top: 0; border-bottom:2px solid #0F4780; } .footer {background-color:#E5ECFA;border-bottom:2px solid #0F4780;border-top:2px solid #0F4780;padding:0.1em 0.5em; }</style>	</head>
<body>
<div class="header"><h1>Your Company</h1><h2>subject</h2></div>
<div class="body">
<p>Ciao ${user}, di seguito l''elenco dei contenuti per cui è richiesto il tuo intervento
<ul>]]></header>
		<template><![CDATA[<li><h3><a href="{link}">{descr}</a></h3><p>{type}, {status}</p></li>]]></template>
		<footer><![CDATA[</ul></div><div class="footer"></div></body></html>]]></footer>
	</mail>
</notifierConfig>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','cthread_config','Configurazione thread pubblicazione/sospensione automatica','<contentThreadconfig sitecode="A">
<!--attiva o disattiva lo scheduler.
I valori da assegnare all attributo active possono essere true o false
 se il valore settato è true , lo scheduler è attivo
 se il valore settato è false , lo scheduler non è attivo
-->
<scheduler active="true"/>
<!--categoria globale a cui verranno associati i contenuti in fase di depubblicazione o sospensione del contenuto.
In corrispondenza della voce="code" va messo il codice della categoria;
è obbligatorio mettere questa categoria in quanto verrà utilizzata per lo spostamento dei contenuti 
nell archivio online in mancanza di categorie specifiche -->    
<globalcat code="archive"/> 
<!--contenuto e modello di contenuto sostitutivo globale, verrà utilizzato nel caso in cui non vi sia specificato 
l idContentReplace e il modelIdContentReplace nel tag contentType.
    nell attributo contentId = deve essere inserito l id del contenuto sostitutivo es. ART1226933
    nell attributo modelId = deve essere inserito l id del modello del contenuto sostitutivo   es. 12
   La definizione di questo contenuto sostitutivo globale è obbligatoria
-->   
<contentReplace contentId="ART1226933" modelId="12"/> 
<contentTypes>
<!--
startAttr: quest attributo deve essere valorizzato con il nome del campo in cui sarà specificata la data di pubblicazione.(obbligatorio)
endAttr: quest attributo deve essere valorizzato con il nome del campo in cui sarà specificata la data di sospensione.(obbligatorio)
idContentReplace: quest attributo deve essere valorizzato con il nome del campo in cui sarà specificato l id del contenuto da sostituire(opzionale)
modelIdContentReplace: quest attributo deve essere valorizzato con il nome del campo in cui sarà specificato il modelid del contenuto da sostituire(opzionale)
Nel caso in cui non vengano valorizzati idContentReplace e modelIdContentReplace, verrà utilizzato il contenuto sostitutivo globale definito precedentemente

Suspend: l attributo suspend è obbligatorio ed è necessario per definire l azione da svolgere(valori possono essere true o false)
- se è settato a true,  predispone la sospensione dei contenuti per la tipologia di contenuti in cui è settato
- se è settato a false, predispone lo  spostamento nell archivio online dei contenuti della tipologia di contenuto in cui è settato 
-->
        <contentType type="NOL" startAttr="Data_inizio" endAttr="Data_fine" idContentReplace="Id_contenuto_sost" modelIdContentReplace="Model_id" suspend="true">
                <!--categorie associate al tipo di contenuto e che verranno associate ai contenuti 
                in fase di depubblicazione o sospensione 
                nell attributo code deve essere specificato il codice della categoria-->
    <!--<category code="cnol_canale7" />
    <category code="cnol_canale3" />
    <category code="cnol_canale4" />
    <category code="cnol_canale5" />
    <category code="cnol_canale2" />
    <category code="cnol_canale1" />
    <category code="cnol_canale6" />
    <category code="cnol_canale8" /> -->
        </contentType>
<contentType type="DRT" startAttr="Data_inizio" endAttr="Data_fine" suspend="true" >
         <!--categorie associate al tipo di contenuto e che verranno associate ai contenuti in fase di depubblicazione o sospensione 
                nell attributo code deve essere specificato il codice della categoria-->
    <!--<category code="pubb_drt" />
    <category code="cnol_canale8" /> -->
   </contentType>
  <contentType type="SNT" startAttr="Data_inizio" endAttr="Data_fine" suspend="true" >
        <!--non essendoci categorie associate, ai contenuti di questo tipo verrà associata la categoria globale -->
   </contentType>
</contentTypes>

<!-- i gruppi attualmente non vengono usati-->
<groups> 
          <group id="gruppoDiProvaThread" contentType="NOL" /> 
</groups>
  
<!-- utenti che riceveranno le comunicazioni sull andamento delle operazioni di pubblicazione, sospensione e spostamento -->
<users>
  <user username="admin" contentType="*" />
</users>


<!-- template della mail di comunicazione-->
<mail alsoHtml="false" senderCode="CODE1" mailAttrName="email" >    
<subject><![CDATA[Report pubblicazione/sospensione automatica]]></subject>     
 <htmlHeader><![CDATA[<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="it">  <head> </head>  <body><div style="padding:1.5em;font-family:Arial, sans serif; color: #333333;font-size:0.9em">Report  Pubblicazione/Sospensione automatica contenuti<br/><p>Contenuti pubblicati:</p>]]></htmlHeader> 
     <htmlFooter><![CDATA[<br /><br />Cordiali Saluti<br/></div></body></html>]]> </htmlFooter>       
<htmlSeparator> <![CDATA[ <br /> Contenuti sospesi: ]]> </htmlSeparator>     
 <textHeader><![CDATA[Report pubblicazione/sospensione automatica]]> </textHeader>  
<textFooter><![CDATA[   Cordiali Saluti.]]> </textFooter>      
<textSeparator><![CDATA[

Contenuti sospesi:
 ]]></textSeparator>  

<htmlSeparatorMove> <![CDATA[ <br /> Contenuti spostati in archivio online: ]]> </htmlSeparatorMove> 
 <textHeaderMove><![CDATA[Report pubblicazione/sospensione automatica]]> </textHeaderMove>  
<textFooterMove><![CDATA[   Cordiali Saluti.]]> </textFooterMove>  
<textSeparatorMove><![CDATA[

Contenuti spostati in archivio online:
 ]]></textSeparatorMove>   

</mail> </contentThreadconfig>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpuserreg_Config','Configuration for the plugin User Registration','<userRegConfig>
	<tokenValidity minutes="60"/>
	<sender code="CODE1" />
	<userAuthDefaults />
	<activation pageCode="activation">
		<template lang="it">
			<subject><![CDATA[Il tuo account è stato creato]]></subject>
			<body><![CDATA[
Gentile {name} {surname},
grazie per esserti registrato.
Per attivare il tuo account è necessario seguire il seguente link: 
{link}
Cordiali Saluti.
			]]></body>
		</template>
		<template lang="en">
			<subject><![CDATA[Your account has been created]]></subject>
			<body><![CDATA[
Dear {name} {surname}, 
thank you for registering.
To activate your account you need to click on the link: 
{link}
Best regards.
			]]></body>
		</template>
	</activation>
	<reactivation pageCode="reactivation">
		<template lang="it">
			<subject><![CDATA[[Entando]: Ripristino password]]></subject>
			<body><![CDATA[
Gentile {name} {surname}, 
il tuo userName è {userName}.
Per riattivare il tuo account è necessario seguire il seguente link: 
{link}
Cordiali Saluti.
			]]></body>
		</template>
		<template lang="en">
			<subject><![CDATA[[Entando]: Password recover]]></subject>
			<body><![CDATA[
Dear {name} {surname}, 
your username is {userName}.
To recover your password you need to click on the link: 
{link}
Best regards.
			]]></body>
		</template>
	</reactivation>
</userRegConfig>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpnewsletter_config','Configurazione servizio Newsletter','<?xml version="1.0" encoding="UTF-8"?>
<newsletterConfig>
	<scheduler active="false" onlyOwner="false" delayHours="24" start="27/08/2009 11:00" />
	<subscriptions allAttributeName="NewsletterAllContents" />
	<contentTypes />
	<mail alsoHtml="true" senderCode="CODE1" unsubscriptionPage="unsubscription_page">
		<subject><![CDATA[Newsletter]]></subject>
		<htmlHeader><![CDATA[<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="it">
<head></head>
<body><h1>Newsletter</h1><p>Hi, <br />The latest news are:</p>]]></htmlHeader>
		<htmlFooter><![CDATA[<br /><br />Enjoy the reading<br /></body></html>]]></htmlFooter>
		<htmlSeparator><![CDATA[<br /><br /><hr /><br /><br />]]></htmlSeparator>
		<textHeader><![CDATA[The latest news are: 

###########################################################################]]></textHeader>
		<textFooter><![CDATA[###########################################################################

Buona lettura.]]></textFooter>
		<textSeparator><![CDATA[###########################################################################]]></textSeparator>
		<subscriberHtmlFooter><![CDATA[<p>Follow this <a href="{unsubscribeLink}">link</a> to unsubscribe, or copyAndPast this url:</p>
<p>{unsubscribeLink}</p>]]></subscriberHtmlFooter>
		<subscriberTextFooter><![CDATA[Follow this <a href="{unsubscribeLink}">link</a> to unsubscribe, or copyAndPast this url 
{unsubscribeLink}]]></subscriberTextFooter>
		<subscription pageCode="subscription_page" tokenValidityDays="1">
			<subject><![CDATA[Newsletter Subscription]]></subject>
			<htmlBody><![CDATA[<p>Follow this <a href="{subscribeLink}">link</a> to subscribe newsletter, or copyAndPast this url:</p>
<p>{subscribeLink}</p>]]></htmlBody>
			<textBody><![CDATA[Follow this <a href="{subscribeLink}">link</a> to subscribe newsletter, or copyAndPast this url 
{subscribeLink}]]></textBody>
		</subscription>
	</mail>
</newsletterConfig>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpwebdynamicform_messageNotifierConfig','jpwebdynamicform - Configuration of notify service','<?xml version="1.0" encoding="UTF-8"?>
<messagetypes><messagetype typeCode="COM" store="true" notifiable="false"><recipients /></messagetype><messagetype typeCode="PER" store="true" notifiable="false"><recipients /></messagetype></messagetypes>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpwebdynamicform_messageTypes','jpwebdynamicform - Message type definition','<?xml version="1.0" encoding="UTF-8"?>
<messagetypes>
	<messagetype typecode="COM" typedescr="Company Form">
		<attributes>
			<attribute name="Company" attributetype="Monotext" searchable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Address" attributetype="Monotext" />
			<attribute name="eMail" attributetype="Monotext">
				<validations>
					<required>true</required>
					<regexp><![CDATA[(.*<.+@.+\.[a-z]+>)|(.+@.+\.[a-z]+)]]></regexp>
				</validations>
			</attribute>
			<attribute name="Note" attributetype="Monotext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</messagetype>
	<messagetype typecode="PER" typedescr="Person Form">
		<attributes>
			<attribute name="Name" attributetype="Monotext" searchable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Surname" attributetype="Monotext" searchable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Address" attributetype="Monotext" />
			<attribute name="eMail" attributetype="Monotext">
				<validations>
					<required>true</required>
					<regexp><![CDATA[(.*<.+@.+\.[a-z]+>)|(.+@.+\.[a-z]+)]]></regexp>
				</validations>
			</attribute>
			<attribute name="Note" attributetype="Monotext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Date" attributetype="Date">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Number" attributetype="Number">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Enumerator" attributetype="Enumerator" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Opzione A,Opzione B,Opzione C,Opzione D,Opzione E,Opzione F,Opzione G]]>
			</attribute>
			<attribute name="Text" attributetype="Text">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Longtext" attributetype="Longtext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Boolean" attributetype="Boolean">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="CheckBox" attributetype="CheckBox">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="ThreeState" attributetype="ThreeState">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</messagetype>
</messagetypes>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','entandoComponentsReport','The component installation report','<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2020-06-23 14:44:18</creation>
	<lastupdate>2020-06-23 18:08:49</lastupdate>
	<components>
		<component code="entandoCore" date="2020-06-23 14:44:19" status="OK">
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
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-jquery" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="portalexample_card" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="portalexample_cards" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-html5-essentials" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-bootstrap" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-less" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jacms" date="2020-06-23 14:44:20" status="OK">
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
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-generic" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_bar" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-admin-console" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="authusershortcuts" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-portal-ui" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-app-view-cms-default" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-language_choose" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-login_form" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-search_form" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-page-bootstrap-hero" date="2020-06-23 14:44:20" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="RESTORE" />
				<datasource name="servDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpmail" date="2020-06-23 15:53:58" status="OK">
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
		<component code="jpcontentworkflow" date="2020-06-23 15:53:58" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="jpcontentworkflow_events" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpversioning" date="2020-06-23 15:53:59" status="OK">
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
		<component code="jpfacetnav" date="2020-06-23 16:24:12" status="OK">
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
		<component code="entando-app-view-facetnav-default" date="2020-06-23 16:24:12" status="OK">
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
		<component code="jpwidgetutils" date="2020-06-23 16:24:12" status="OK">
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
		<component code="jpcontentscheduler" date="2020-06-23 16:24:12" status="OK">
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
		<component code="jpactionlogger" date="2020-06-23 16:45:06" status="OK">
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
		<component code="jprss" date="2020-06-23 16:51:59" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="jprss_channel" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-app-view-rss-default" date="2020-06-23 16:51:59" status="OK">
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
		<component code="jpldap" date="2020-06-23 17:29:59" status="OK">
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
		<component code="jpgeoref" date="2020-06-23 17:29:59" status="OK">
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
		<component code="jpuserreg" date="2020-06-23 17:29:59" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="jpuserreg_activationtokens" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-app-view-userreg-default" date="2020-06-23 17:30:00" status="OK">
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
		<component code="jpseo" date="2020-06-23 17:30:00" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="jpseo_friendlycode" />
				</datasource>
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpnewsletter" date="2020-06-23 17:30:00" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="jpnewsletter_newsletterreport" />
					<table name="jpnewsletter_contentreport" />
					<table name="jpnewsletter_recipient" />
					<table name="jpnewsletter_contentqueue" />
					<table name="jpnewsletter_subscribers" />
					<table name="jpnewsletter_subscribertokens" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="OK" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-app-view-newsletter-default" date="2020-06-23 17:30:00" status="OK">
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
		<component code="jpwebdynamicform" date="2020-06-23 18:08:27" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="jpwebdynamicform_messages" />
					<table name="jpwebdynamicform_search" />
					<table name="jpwebdynamicform_answers" />
					<table name="jpwebdynamicform_attroles" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="OK" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-app-view-webdynamicform-default" date="2020-06-23 18:08:28" status="OK">
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
	</components>
</reports>

');
