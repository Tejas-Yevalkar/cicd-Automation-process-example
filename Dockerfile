FROM openjdk:8
EXPOSE 8080
ADD target/cicd-automation-new.jar cicd-automation-new.jar
ENTRYPOINT ["java","-jar","/cicd-automation-new.jar"]