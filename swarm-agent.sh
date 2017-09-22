#!/bin/bash -x
cat << EOF > /tmp/swarm-settings
${AUTODISCOVERYADDRESS:+-autoDiscoveryAddress $AUTODISCOVERYADDRESS}
${CANDIDATETAG:+-candidateTag $CANDIDATETAG}
${DELETEEXISTINGCLIENTS:+-deleteExistingClients}
${DESCRIPTION:+-description $DESCRIPTION}
${DISABLESSLVERIFICATION:+-disableSslVerification }
${DISABLECLIENTSUNIQUEID:+-disableClientsUniqueId }
${EXECUTORS:+-executors $EXECUTORS}
${FSROOT:+-fsroot $FSROOT}
${LABELSFILE:+-labelsFile "$LABELSFILE"}
${LOGFILE:+-logFile $LOGFILE}
${MASTER:+-master "$MASTER"}
${MAXRETRYINTERVAL:+-maxRetryInterval $MAXRETRYINTERVAL}
${MODE:+-mode $MODE}
${NAME:+-name "$NAME"}
${NORETRYAFTERCONNECTED:+-noRetryAfterConnected }
${PASSWORDENVVARIABLE:+-passwordEnvVariable $PASSWORDENVVARIABLE}
${RETRY:+-retry $RETRY}
${RETRYBACKOFFSTRATEGY:+-retryBackOffStrategy $RETRYBACKOFFSTRATEGY}
${RETRYINTERVAL:+-retryInterval $RETRYINTERVAL}
${SHOWHOSTNAME:+-showHostName }
${SSLFINGERPRINTS:+-sslFingerprints $SSLFINGERPRINTS}
${T:+-t $T}
${TUNNEL:+-tunnel $TUNNEL}
${USERNAME:+-username $USERNAME}
${PASSWORD:+-password  $PASSWORD}
EOF

java_exe='/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java'
swarm_jar='/jenkins/plugins/swarm-client.jar'
swarm_settings=`cat /tmp/swarm-settings`
cd  /jenkins
$java_exe -jar $swarm_jar  $swarm_settings -labels "swarm docker $LABELS"
