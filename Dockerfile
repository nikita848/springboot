FROM tomcat:9.0

# Remove the default Tomcat application files
RUN rm -rf /usr/local/tomcat/webapps/*

WORKDIR C:\Users\nikitarastogi\Downloads\demo\demo

# Copy the Address Book application to the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
