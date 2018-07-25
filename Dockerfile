FROM websphere-liberty:webProfile7
ENV KEYSTORE_REQUIRED "false"

COPY src/main/liberty/config/server.xml /config/server.xml
COPY target/mp-openapi-1.0-SNAPSHOT.war /config/apps/mp-openapi.war
COPY src/main/liberty/config/server.env /config/server.env


#FEATURES: Install any features that are required
#RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y \
#&& rm -rf /var/lib/apt/lists/*
RUN /opt/ibm/wlp/bin/installUtility install  --acceptLicense \
	mpFaultTolerance-1.0 \
	mpHealth-1.0 \
	mpJwt-1.0 \
	mpMetrics-1.1 \
	mpRestClient-1.0 \
	opentracing-1.0 \
	apiDiscovery-1.0 \
	openapi-3.0 \
	mpConfig-1.2; exit 0


