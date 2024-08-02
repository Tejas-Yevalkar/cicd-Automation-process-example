FROM openjdk.17
EXPOSE 8080
ADD target/cicd-automation.jar cicd-automation.jar
ENTRYPOINT ["java","-jar","/cicd-automation.jar "]