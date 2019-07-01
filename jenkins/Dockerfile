#https://cinqict.nl/building-a-jenkins-development-docker-image/

FROM jenkins/jenkins:lts

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

RUN /usr/local/bin/install-plugins.sh \
    kubernetes:latest \
    workflow-multibranch:latest \
    pipeline-model-definition:latest \
    git:latest \
    credentials:latest

COPY --chown=jenkins:jenkins init.groovy.d/ /var/jenkins_home/init.groovy.d/
