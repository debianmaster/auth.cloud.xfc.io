FROM jboss/keycloak-mysql

COPY standalone*.xml /opt/jboss/keycloak/standalone/configuration/
