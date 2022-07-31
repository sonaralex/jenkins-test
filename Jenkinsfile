pipeline {
    agent any

    environment {
        USER_CREDENTIALS = credentials('dockerHub')
    }

    stages {
        stage('Run') {
            steps {
                sh "echo $USER_CREDENTIALS_USR"
                sh "echo $USER_CREDENTIALS_PSW"
            }
        }
    }
}
