FROM openjdk:8
EXPOSE 8080
ADD target/cicd-automation.jar cicd-automation.jar
ENTRYPOINT ["java","-jar","/cicd-automation.jar "]