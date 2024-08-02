pipeline {
    agent any
    tools{
        maven '3.9.8'
    }
    environment {
        DOCKER_CREDENTIALS_ID = 'dockID'
    }

    stages{
        stage('Build Maven'){
            steps{
               checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Tejas-Yevalkar/cicd-Automation-process-example']])
               bat 'mvn clean install'
            }
        }
        stage('Build Docker Iamge'){
            steps{
                script{
                    bat 'docker build -t tejasyevalkar/cicd-automation .'
                }
            }
        }
        stage('Push Image to Docker Hub'){
            steps{
                script{
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS_ID) {
                        bat 'docker push tejasyevalkar/cicd-automation'
                    }
                }
            }
        }
    }
}
