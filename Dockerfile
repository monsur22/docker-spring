# FROM maven:3.8.6-amazoncorretto-11

FROM maven:3-jdk-11
COPY target/*.jar docker-spring.jar
CMD ["java","-jar","/docker-spring.jar"]
