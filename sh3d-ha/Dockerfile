# Use the official Tomcat image as the base image
FROM tomcat:10-jre8-temurin-jammy

# Set the working directory
WORKDIR /app

#Startup script copy
COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh 

#RUN sed -r  's/port="[0-9]{4}"/port="8880"/g' 
#Some needed software
RUN apt-get update && \
    apt-get install jq -y

# Move the extracted contents to the default web server directory
COPY SweetHome3DJS-7.2.war /usr/local/tomcat/webapps/sweethome3djsha.war

# Add configuration to catalina.properties to skip unnecessary JARs during TLD scanning
RUN echo "tomcat.util.scan.StandardJarScanFilter.jarsToSkip=*" >> /usr/local/tomcat/conf/catalina.properties

# Start the Tomcat server
CMD ["run.sh"]
