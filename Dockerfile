FROM open-liberty:webProfile7
ENV KEYSTORE_REQUIRED "false"

COPY src/main/liberty/config/server.xml /config/server.xml
COPY target/mp-openapi-1.0-SNAPSHOT.war /config/apps/mp-openapi.war
COPY src/main/liberty/config/server.env /config/server.env
