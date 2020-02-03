pipeline {

    agent any

    environment {
            PASS = credentials('docker-hub-pass')
        }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/build.sh
                '''
            }
        }
        stage('Push') {
            steps {
                sh '''
                    ./jenkins/push/push.sh
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    ./jenkins/deploy/deploy.sh
                '''
            }
        }
    }
}