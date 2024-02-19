# Use the official Tomcat image as the base image
FROM tomcat:jre21-temurin-jammy

# Move the extracted contents to the default web server directory
COPY rootfs /

# Add configuration to catalina.properties to skip unnecessary JARs during TLD scanning
# RUN echo "tomcat.util.scan.StandardJarScanFilter.jarsToSkip=*" >> /usr/local/tomcat/conf/catalina.properties

RUN chmod +x /usr/local/bin/run.sh && \
    chmod +x /usr/local/tomcat/bin/setenv.sh && \
    apt-get update && \
    apt-get install jq -y

# Start the Tomcat server
CMD ["run.sh"]
