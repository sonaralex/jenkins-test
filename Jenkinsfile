pipeline {
    agent any
    environment { 
        CC = 'clang'
        DOCKERHUB_CREDENTIALS_ACCESS = credentials('DOCKERHUB_CREDENTIALS')
    }
    stages {
        stage('Example') {
            environment { 
                DEBUG_FLAGS = '-g'
            }
            steps {
                sh 'printenv'
            }
        }
    }
}
