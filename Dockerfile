# FROM maven:3.8.6-amazoncorretto-11
# WORKDIR /docker-spring


# COPY .mvn .mvn
# COPY mvnw .
# COPY pom.xml .
# COPY src src


# RUN ./mvnw install

# RUN ./mvnw package
# COPY target/*.jar docker-spring.jar
# ENTRYPOINT ["java", "-jar", "docker-spring.jar"]

FROM amazoncorretto:11-alpine-jdk
COPY target/*.jar docker-spring.jar
CMD ["java","-jar","/docker-spring.jar"]
