FROM jenkins:2.60.3

MAINTAINER SOP

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY groovy/* /usr/share/jenkins/ref/init.groovy.d/

COPY config/credentials.xml /usr/share/jenkins/ref/credentials.xml
COPY config/ssh-keys/id_rsa /usr/share/jenkins/ref/.ssh/id_rsa
COPY config/ssh-keys/id_rsa.pub /usr/share/jenkins/ref/.ssh/id_rsa.pub
