pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo '1. BUILD'
                sh 'docker build -t simple-app .'
            }
        }

        stage('Test') {
            steps {
                echo '2. TEST'
                sh './test.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo '3. DEPLOY'
                sh '''
                docker rm -f simple-app-container || true
                docker run -d --name simple-app-container -p 5001:5001 simple-app
                '''
            }
        }
    }

    post {
        success {
            echo 'SUCCESS'
        }
        failure {
            echo 'FAILED'
        }
    }
}
