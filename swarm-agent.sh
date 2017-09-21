#!/bin/bash -x
java_exe='/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java'
swarm_jar='/jenkins/plugins/swarm-client-3.4.jar'

$java_exe -jar $swarm_jar  \
${AUTODISCOVERYADDRESS:+-autoDiscoveryAddress $AUTODISCOVERYADDRESS} \
${CANDIDATETAG:+-candidateTag $CANDIDATETAG} \
${DELETEEXISTINGCLIENTS:-deleteExistingClients $DELETEEXISTINGCLIENTS} \
${DESCRIPTION:-description $DESCRIPTION} \
${DISABLECLIENTSUNIQUEID:-disableClientsUniqueId $DISABLECLIENTSUNIQUEID} \
${DISABLESSLVERIFICATION:-disableSslVerification $DISABLESSLVERIFICATION} \
${EXECUTORS:-executors $EXECUTORS} \
${FSROOT:-fsroot $FSROOT} \
${LABELS:-labels $LABELS} \
${LABELSFILE:-labelsFile $LABELSFILE} \
${LOGFILE:-logFile $LOGFILE} \
${MASTER:-master $MASTER} \
${MAXRETRYINTERVAL:-maxRetryInterval $MAXRETRYINTERVAL} \
${MODE:-mode $MODE} \
${NAME:-name $NAME} \
${NORETRYAFTERCONNECTED:-noRetryAfterConnected $NORETRYAFTERCONNECTED} \
${PASSWORD:-password  $PASSWORD} \
${PASSWORDENVVARIABLE:-passwordEnvVariable $PASSWORDENVVARIABLE} \
${RETRY:-retry $RETRY} \
${RETRYBACKOFFSTRATEGY:-retryBackOffStrategy $RETRYBACKOFFSTRATEGY} \
${RETRYINTERVAL:-retryInterval $RETRYINTERVAL} \
${SHOWHOSTNAME:-showHostName $SHOWHOSTNAME} \
${SSLFINGERPRINTS:-sslFingerprints $SSLFINGERPRINTS} \
${T:-t $T} \
${TUNNEL:-tunnel $TUNNEL} \
${USERNAME:-username $USERNAME} \
