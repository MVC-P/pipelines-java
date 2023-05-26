FROM openjdk:11-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/*.jar helloworld.jar
EXPOSE 8088
ENTRYPOINT exec java $JAVA_OPTS -jar helloworld.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar re
