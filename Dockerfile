# Use an official Tomcat image
FROM tomcat:9-jdk11

# Copy the WAR file into the Tomcat webapps directory
COPY target/yourapp.war /usr/local/tomcat/webapps/yourapp.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]

