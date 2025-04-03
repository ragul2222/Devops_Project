pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/ragul2222/Devops_Project.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t rrragul/project:latest .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                withDockerRegistry([credentialsId: '6f6dcbd6-8a4f-466d-86fe-37d6c7a838c7', url: '']) {
                    sh 'docker push rrragul/project:latest'
                }
            }
        }
    }
}
