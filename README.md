## jenkins-swarm-slave
# Usage
     docker run -ti --rm --name jenkins-agent \
     --link jenkins:jenkins \
     -e NAME=slave \
     -e LABELS='docker ubuntu' \
     -e MASTER=http://jenkins:8080 \
     -e USERNAME=jenkins \
     -e PASSWORD=jenkins \
     odovzhan/jenkins-swarm-ubuntu
    
    
About swarm cli plugin
https://wiki.jenkins.io/display/JENKINS/Swarm+Plugin


## All arguments should used  in uppercase:

    % java -jar swarm-client.jar --help
     -autoDiscoveryAddress VAL              : Use this address for udp-based 
                                               auto-discovery (default 255.255.255.255)
     -candidateTag VAL                      : Show swarm candidate with tag only
     -deleteExistingClients                 : Deletes any existing slave with the
                                              same name.
     -description VAL                       : Description to be put on the slave
     -disableClientsUniqueId                : Disables Clients unique ID.
     -disableSslVerification                : Disables SSL verification in the
                                              HttpClient.
     -executors N                           : Number of executors
     -fsroot FILE                           : Directory where Jenkins places files
     -help (--help)                         : Show the help screen
     -labels VAL                            : Whitespace-separated list of labels
                                              to be assigned for this slave.
                                              Multiple options are allowed.
     -labelsFile VAL                        : File location with space delimited
                                              list of labels.  If the file changes,
                                              restarts this client.
     -logFile VAL                           : File to write STDOUT and STDERR to.
                                              (Deprecated, use -Djava.util.logging.c
                                              onfig.file={path}logging.properties
                                              instead)
     -master VAL                            : The complete target Jenkins URL like
                                              'http://server:8080/jenkins/'. If
                                              this option is specified,
                                              auto-discovery will be skipped
     -maxRetryInterval N                    : Max time to wait before retry in
                                              seconds. Default is 60 seconds.
     -mode MODE                             : The mode controlling how Jenkins
                                              allocates jobs to slaves. Can be
                                              either 'normal' (utilize this slave
                                              as much as possible) or 'exclusive'
                                              (leave this machine for tied jobs
                                          only). Default is normal.
     -name VAL                              : Name of the slave
     -noRetryAfterConnected                 : Do not retry if a successful
                                              connection gets closed.
     -password VAL                          : The Jenkins user password
     -passwordEnvVariable VAL               : Environment variable that the
                                              password is stored in
     -retry N                               : Number of retries before giving up.
                                              Unlimited if not specified.
     -retryBackOffStrategy RETRY_BACK_OFF_S : The mode controlling retry wait time.
     TRATEGY                                  Can be either none (use same interval
                                              between retires)or 'linear' (increase
                                              wait time before each retry up to
                                              maxRetryInterval) or 'exponential'
                                              (double wait interval on each retry
                                              up to maxRetryInterval). Default is
                                              none.
     -retryInterval N                       : Time to wait before retry in seconds.
                                              Default is 10 seconds.
     -showHostName (--showHostName)         : Show hostnames instead of IP address
     -sslFingerprints VAL                   : Whitespace-separated list of accepted
                                              certificate fingerprints
                                              (SHA-256/Hex), otherwise system
                                              truststore will be used. No
                                              revocation, expiration or not yet
                                              valid check will be performed for
                                              custom fingerprints! Multiple options
                                              are allowed.
     -t (--toolLocation)                    : A tool location to be defined on this
                                              slave. It is specified as
                                              'toolName=location'
     -tunnel VAL                            : Connect to the specified host and
                                              port, instead of connecting directly
                                              to Jenkins. Useful when connection to
                                              Hudson needs to be tunneled. Can be
                                              also HOST: or :PORT, in which case
                                              the missing portion will be
                                              auto-configured like the default
                                              behavior
     -username VAL                          : The Jenkins username for
                                              authentication
