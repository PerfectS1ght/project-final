FROM openjdk:17
COPY resources ./resources
COPY target/*.jar jira-1.0.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","/jira-1.0.jar"]