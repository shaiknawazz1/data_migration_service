# Start with OL runtime.
FROM icr.io/appcafe/open-liberty:full-java11-openj9-ubi

ARG VERSION=1.0
ARG REVISION=SNAPSHOT

USER root

EXPOSE 9080

COPY --chown=1001:0 build/docker/server.xml /config/
COPY --chown=1001:0 build/docker/jvm.options /config/
COPY --chown=1001:0 build/docker/log4j2.xml /config/
COPY --chown=1001:0 build/docker/apps/*.war /config/apps/
COPY --chown=1001:0 build/docker/lib/*.jar /config/lib/insights/

#COPY build/docker/server.xml /config/
#COPY build/docker/jvm.options /config/
#COPY build/docker/log4j2.xml /config/
#COPY build/docker/apps/*.war /config/apps/
#COPY build/docker/lib/*.jar /config/lib/insights/


USER 1001


#USER root
