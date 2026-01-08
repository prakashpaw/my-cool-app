
pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = 'dockerhub-creds-id' // We will set this in Phase 3
        APP_NAME = 'my-node-app'
        DOCKER_USER = 'your-dockerhub-username'
    }
    stages {
        stage('Checkout') {
            steps { checkout scm }
        }
        stage('Unit Tests') {
            steps {
                sh 'npm install'
                sh 'npm test'
            }
        }
        stage('Build & Push Image') {
            steps {
                script {
                    docker.withRegistry('', DOCKERHUB_CREDENTIALS) {
                        def customImage = docker.build("${DOCKER_USER}/${APP_NAME}:${env.BUILD_ID}")
                        customImage.push()
                        customImage.push('latest')
                    }
                }
            }
        }
        stage('Deploy to Test') {
            when { branch 'develop' }
            steps {
                sshagent(['ec2-ssh-key']) {
                    sh "ssh -o StrictHostKeyChecking=no ubuntu@<TEST_EC2_IP> 'docker stop ${APP_NAME} || true && docker rm ${APP_NAME} || true && docker pull ${DOCKER_USER}/${APP_NAME}:latest && docker run -d --name ${APP_NAME} -p 80:3000 ${DOCKER_USER}/${APP_NAME}:latest'"
                }
            }
        }
    }
}
