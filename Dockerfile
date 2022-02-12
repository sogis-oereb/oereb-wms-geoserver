FROM sogis/geoserver:2.20.2

LABEL maintainer="Stefan Ziegler stefan.ziegler.de@gmail.com"

ENV GEOSERVER_DATA_DIR /usr/local/geoserver/data

# Replace default data directory
#RUN mkdir -p /tmp/gs_tmp
#ADD data_dir /tmp/gs_tmp
#RUN mv /tmp/gs_tmp/* ${GEOSERVER_DATA_DIR}

# Tomcat environment
ENV CATALINA_OPTS "-server -Djava.awt.headless=true \
	-XX:MaxRAMPercentage=80.0 -XX:+UseG1GC -XX:NewSize=48m -XX:SoftRefLRUPolicyMSPerMB=36000 \
    -DGEOSERVER_DATA_DIR=${GEOSERVER_DATA_DIR}"

CMD start.sh

EXPOSE 8080
