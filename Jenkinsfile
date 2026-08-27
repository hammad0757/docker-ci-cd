pipeline {
    agent any

    tools {
        maven "maven"
    }

	stages {
		stage('SCM checkout') {
		    steps {
		        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hammad0757/docker-ci-cd.git']])
		    }
		}

		stage('Build') {
		    steps {
		        script {
		            bat 'mvn clean install'
		        }
		    }

		}

		stage('Build Image') {
		    steps {
		        script {
		            bat 'docker build -t hammadiqbal2/spring-ci-cd:1.0 .'
		        }
		    }
		}

	}

}
