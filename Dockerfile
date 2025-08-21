FROM tomcat:9.0-jdk11

# Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR (keep name as webapp.war)
#
# If WAR comes from webapp/target/
COPY webapp/target/*.war /usr/local/tomcat/webapps/webapp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
