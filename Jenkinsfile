pipeline {
    agent any
    environment { 
        CC = 'clang'
        DOCKERHUB_CREDENTIALS = credentials('dockerHub')
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
