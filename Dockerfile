#
FROM ubuntu:latest
#
MAINTAINER  Oleksiy Dovzhanitsya <oleksdovz@gmail.com>
#
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
#
RUN apt update && \
    apt install -y openjdk-8-jre && \
    apt clean && \
    mkdir -pv  /jenkins /jenkins/plugins
#
ADD https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/3.4/swarm-client-3.4.jar /jenkins/plugins/
#
ADD swarm-agent.sh /usr/bin/swarm-agent.sh
#
RUN chmod 777 /usr/bin/swarm-agent.sh
#
ENTRYPOINT /usr/bin/swarm-agent.sh
