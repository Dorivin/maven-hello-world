pipeline {

    agent any
    
    environment {
        DOCKERHUB_PASS = credentials('DOCKERHUB_PASS') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/build_jar.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build_image.sh
                '''
            }

        }


        stage('Push') {
            steps {
                sh './jenkins/push/push_docker_image.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy_docker_image.sh'
            }
        }
    }
}
