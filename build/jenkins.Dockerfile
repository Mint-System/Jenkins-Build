FROM jenkins/jenkins

USER root

RUN apt-get update \
&& DEBIAN_FRONTEND=noninteractive \
apt-get install --no-install-recommends --assume-yes \
docker.io

RUN curl -L \  
  "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" \  
  -o /usr/local/bin/docker-compose \  
  && chmod +x /usr/local/bin/docker-compose  

USER jenkins

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

COPY casc.yml /var/jenkins_home/casc.yml
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yml
