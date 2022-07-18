# Enable newrelic monitoring
#export CATALINA_OPTS="$CATALINA_OPTS -javaagent:/opt/newrelic/newrelic.jar"
#export CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.rmi.port=9099 -Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.port=9099 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.local.only=false -Djava.rmi.server.hostname=localhost"
export CATALINA_OPTS="$CATALINA_OPTS -server"
export CATALINA_OPTS="$CATALINA_OPTS ${XMS:=-Xms2g}"
export CATALINA_OPTS="$CATALINA_OPTS ${XMX:=-Xmx2g}"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseG1GC"
export CATALINA_OPTS="$CATALINA_OPTS ${INITIAL_HEAP_SIZE:=-XX:InitialHeapSize=2g}"
export CATALINA_OPTS="$CATALINA_OPTS ${MAX_HEAP_SIZE:=-XX:MaxHeapSize=2g}"
export CATALINA_OPTS="$CATALINA_OPTS -XX:MaxGCPauseMillis=500"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+DisableExplicitGC"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseStringDeduplication"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+ParallelRefProcEnabled"
export CATALINA_OPTS="$CATALINA_OPTS -XX:MaxMetaspaceSize=512m"
export CATALINA_OPTS="$CATALINA_OPTS -XX:MaxTenuringThreshold=5"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+AlwaysPreTouch"
#export CATALINA_OPTS="$CATALINA_OPTS -XX:+UnlockExperimentalVMOptions"
#export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseZGC"
#export CATALINA_OPTS="$CATALINA_OPTS -XX:+AggressiveOpts"
#export CATALINA_OPTS="$CATALINA_OPTS -XX:ParallelGCThreads=0"
#export CATALINA_OPTS="$CATALINA_OPTS -XX:ConcGCThreads=8"
#export CATALINA_OPTS="$CATALINA_OPTS -XX:InitiatingHeapOccupancyPercent=70"
export CATALINA_OPTS="$CATALINA_OPTS -Duser.timezone=Europe/Rome"
export CATALINA_OPTS="$CATALINA_OPTS -Dstatic.resources.cache=${STATIC_RESOURCES_CACHE_SIZE}"
export CATALINA_OPTS="$CATALINA_OPTS -Dentando.web.context=${ENTANDO_WEB_CONTEXT}"
export CATALINA_OPTS="$CATALINA_OPTS -Dservdb.jndi=${SERVDB_JNDI}"
export CATALINA_OPTS="$CATALINA_OPTS -Dportdb.jndi=${PORTDB_JNDI}"
export CATALINA_OPTS="$CATALINA_OPTS -Dportdb.url=${PORTDB_URL}"
export CATALINA_OPTS="$CATALINA_OPTS -Dservdb.url=${SERVDB_URL}"
export CATALINA_OPTS="$CATALINA_OPTS -Dportdb.username=${PORTDB_USERNAME}"
export CATALINA_OPTS="$CATALINA_OPTS -Dservdb.username=${SERVDB_USERNAME}"
export CATALINA_OPTS="$CATALINA_OPTS -Dportdb.password=${PORTDB_PASSWORD}"
export CATALINA_OPTS="$CATALINA_OPTS -Dservdb.password=${SERVDB_PASSWORD}"
export CATALINA_OPTS="$CATALINA_OPTS -Dprofile.database.driverClassName=$($(dirname ${BASH_SOURCE[0]})/determine-driver.sh ${PORTDB_DRIVER})"
export CATALINA_OPTS="$CATALINA_OPTS -Dportdb.driverClassName=$($(dirname ${BASH_SOURCE[0]})/determine-driver.sh ${PORTDB_DRIVER})"
export CATALINA_OPTS="$CATALINA_OPTS -Dservdb.driverClassName=$($(dirname ${BASH_SOURCE[0]})/determine-driver.sh ${SERVDB_DRIVER})"
export CATALINA_OPTS="$CATALINA_OPTS -DportDataSourceClassName=$($(dirname ${BASH_SOURCE[0]})/determine-driver.sh ${PORTDB_DRIVER})"
export CATALINA_OPTS="$CATALINA_OPTS -DservDataSourceClassName=$($(dirname ${BASH_SOURCE[0]})/determine-driver.sh ${SERVDB_DRIVER})"

# Entando Options
export CATALINA_OPTS="$CATALINA_OPTS -DappBuilderIntegration=${APPBUILDERINTEGRATIONENABLED}"
export CATALINA_OPTS="$CATALINA_OPTS -DredisActive=${REDIS_ACTIVE}"
export CATALINA_OPTS="$CATALINA_OPTS -DredisAddress=${REDIS_ADDRESS}"
export CATALINA_OPTS="$CATALINA_OPTS -DredisAddresses=${REDIS_ADDRESSES}"
export CATALINA_OPTS="$CATALINA_OPTS -DSolarAddress=${SOLR_ADDRESS}"
export CATALINA_OPTS="$CATALINA_OPTS -DforceHttps=${FORCE_HTTPS}"

export CATALINA_OPTS="$CATALINA_OPTS -DlogFilePrefix=/tmp/entando-logs"
export CATALINA_OPTS="$CATALINA_OPTS -DlogName=/tmp/entando-logs/entando.log"
# ENTANDO_WEB_CONTEXT if it's different from `/` add a trailing slash (i.e: portale/)
export CATALINA_OPTS="$CATALINA_OPTS -DresourceRootURL=/${ENTANDO_WEB_CONTEXT}/resources/"
export CATALINA_OPTS="$CATALINA_OPTS -DcmsResourceRootURL=${CMS_RESOURCES_ROOT_URL}"
export CATALINA_OPTS="$CATALINA_OPTS -DprotectedResourceRootURL=/${ENTANDO_WEB_CONTEXT}/protected/"
export CATALINA_OPTS="$CATALINA_OPTS -DresourceDiskRootFolder=/entando-data/static/"
export CATALINA_OPTS="$CATALINA_OPTS -DprotectedResourceDiskRootFolder=/entando-data/protected/"
export CATALINA_OPTS="$CATALINA_OPTS -DindexDiskRootFolder=/entando-data/entando-indices"
export CATALINA_OPTS="$CATALINA_OPTS -Dentando.version=${entando.version}"
export CATALINA_OPTS="$CATALINA_OPTS -Ddb.environment=production"
export CATALINA_OPTS="$CATALINA_OPTS -DlogFileRotatePattern=/usr/local/tomcat/logs/entando_logs/${ENTANDO_WEB_CONTEXT}-%i.log.gz"
