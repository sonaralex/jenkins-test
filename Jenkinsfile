pipeline {
    agent any
    environment { 
        DOCKERHUB_CREDENTIALS_ACCESS = credentials('DOCKERHUB_CREDENTIALS')
    }
    stages {
	stage('Build') {

		steps {
			sh 'docker build -t med_project:latest .'
			}
		}
	stage('Tag') {

		steps {
			sh 'docker tag med_project sonaralex/med_project'
			}
		}	
	stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

	stage('Push') {

			steps {
				sh 'docker push sonaralex/med_project'
			}
		}

    }
    	post {
		always {
			sh 'docker logout'
		}
	}
}
