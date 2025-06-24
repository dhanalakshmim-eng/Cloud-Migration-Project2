pipeline {
    agent any

    environment {
        IMAGE_NAME = 'angeline190/kimai-prod'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/angelinedev/Cloud-Migration-Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME ./kimai'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                        echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                        docker push $IMAGE_NAME
                    '''
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                withCredentials([sshUserPrivateKey(credentialsId: 'ec2-ssh-creds', keyFileVariable: 'KEY')]) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no -i $KEY ec2-user@13.48.47.64 '
                            docker pull $IMAGE_NAME &&
                            docker stop kimai || true &&
                            docker rm kimai || true &&
                            docker run -d --name kimai -p 80:8001 $IMAGE_NAME
                        '
                    '''
                }
            }
        }
    }

    post {
        failure {
            echo '💥 Deployment failed!'
        }
        success {
            echo '🚀 Deployment succeeded!'
        }
    }
}
