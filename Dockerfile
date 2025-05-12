# Use an official Tomcat image
FROM tomcat:9-jdk11

# Copy the WAR file into the Tomcat webapps directory
COPY target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]

