#
FROM ubuntu:latest
#
MAINTAINER  Oleksiy Dovzhanitsya <oleksdovz@gmail.com>
#
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre
#
RUN apt update && \
    apt install -y openjdk-8-jre && \
    apt clean && \
    mkdir -pv  /jenkins /jenkins/plugins
#
ADD https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/3.3/swarm-client-3.3.jar /jenkins/plugins/swarm-client.jar
#
ADD swarm-agent.sh /usr/bin/swarm-agent.sh
#
RUN chmod 777 /usr/bin/swarm-agent.sh
#
ENTRYPOINT /usr/bin/swarm-agent.sh
