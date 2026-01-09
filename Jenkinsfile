pipeline {
    agent any

    tools {
        // Jenkins will automatically download these into /var/jenkins_home/tools/
        // provided you checked "Install automatically" in the Tools UI.
        maven 'Maven' 
        jdk 'Java'
    }

    stages {
        stage('Checkout Source') {
            steps {
                // Pulls code from your GitHub repository
                git 'https://github.com/prakashpaw/my-cool-app.git'
            }
        }

        stage('Maven Build') {
            steps {
                // Runs build. Jenkins handles the PATH for this tool automatically.
                sh 'mvn clean package'
            }
        }

        stage('Deploy to Docker Host') {
            steps {
                // Transfer the .war and execute Docker commands on the Ubuntu host
                sshPublisher(publishers: [
                    sshPublisherDesc(
                        configName: 'DockerHost', // Must match 'Name' in System Config
                        transfers: [
                            sshTransfer(
                                cleanRemote: false,
                                execCommand: '''
                                    cd /opt/docker;
                                    docker rm -f registerapp || true;
                                    docker build -t regapp:v1 .;
                                    docker run -d --name registerapp -p 8087:8080 regapp:v1
                                ''',
                                execTimeout: 120000,
                                remoteDirectory: '/opt/docker', 
                                removePrefix: 'webapp/target', 
                                sourceFiles: 'webapp/target/*.war'
                            )
                        ],
                        verbose: true
                    )
                ])
            }
        }
    }

    post {
        success {
            echo 'Deployment Finished Successfully!'
        }
        failure {
            echo 'Deployment Failed. Check Console Output.'
        }
    }
}
