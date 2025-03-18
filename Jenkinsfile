pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    sh 'ls -la'  
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t devops-container .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh 'docker run --rm devops-container'
                }
            }
        }
    }
}
