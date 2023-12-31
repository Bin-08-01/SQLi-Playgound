FROM openjdk:17

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]