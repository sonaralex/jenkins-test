pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerHub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'ansible-playbook -i /home/alex/Ansible/jenkins_test/hosts /home/alex/Ansible/jenkins_test/ansible_med_project.yml --limit localhost'
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
