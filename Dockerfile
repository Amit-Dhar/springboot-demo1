# we will use openjdk 8 with alpine as it is a very small linux distro
FROM adoptopenjdk/openjdk11:jre-11.0.8_10-alpine
 
# copy the packaged jar file into our docker image
COPY build/libs/demo1-0.0.1-SNAPSHOT.jar /demo.jar
 
# set the startup command to execute the jar
CMD ["java", "-jar", "/demo.jar"]
