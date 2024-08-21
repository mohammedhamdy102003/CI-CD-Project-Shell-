pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    sh 'chmod +x check_and_deploy.sh'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh './check_and_deploy.sh'
                }
            }
        }
    }
}
