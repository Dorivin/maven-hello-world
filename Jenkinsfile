pipeline {

    agent any
    
    environment {
        DOCKERHUB_PASS = credentials('DOCKERHUB_PASS') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    chmod +x ./jenkins/build/build_jar.sh ./jenkins/build/build_image.sh 
		    ./jenkins/build/build_jar.sh mvn -B -DskipTests package
                    ./jenkins/build/build_image.sh
                '''
            }

        }


        stage('Push') {
            steps {
                sh '''
	    	    chmod +x ./jenkins/push/push_docker_image.sh
		    ./jenkins/push/push_docker_image.sh
		'''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
		    chmod +x ./jenkins/deploy/deploy_docker_image.sh
		    ./jenkins/deploy/deploy_docker_image.sh
		 '''
            }
        }
    }
}
