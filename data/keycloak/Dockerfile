FROM jboss/keycloak:11.0.2
MAINTAINER WIN LLC (dave.t.winters@gmail.com)

# Temporarily elevate permissions
USER root

ADD standalone.xml /opt/jboss/keycloak/standalone/configuration/standalone.xml
ADD truststore.jks /opt/jboss/keycloak/standalone/configuration/truststore.jks

# Set permissions on the Wildfly standalone directory for OpenShift deployments
RUN chown -R jboss:0 $JBOSS_HOME/standalone && \
    chmod -R g+rw $JBOSS_HOME/standalone && \
    chown -R jboss:0 $JBOSS_HOME/modules/system/layers/base && \
    chmod -R g+rw $JBOSS_HOME/modules/system/layers/base && \
    chown -R jboss:0 /tmp && \
    chmod -R g+rw /tmp

# Drop permissions
USER jboss

