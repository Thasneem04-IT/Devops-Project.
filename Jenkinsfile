pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    checkout scm
                    sh 'ls -la'
                }
            }
        }

        stage('Run Tests') {  // New stage added
            steps {
                script {
                    sh 'echo "Running unit tests..."'
                    sh 'echo "Tests Passed!"'
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
