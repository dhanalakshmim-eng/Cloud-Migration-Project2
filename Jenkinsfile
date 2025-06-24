pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'angeline190/kimai-prod'
        EC2_HOST = 'ec2-user@13.48.47.64'
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/angelinedev/Cloud-Migration-Project.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} ./kimai"
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([string(credentialsId: 'dockerhub-password', variable: 'DOCKER_PASS')]) {
                    sh """
                        echo $DOCKER_PASS | docker login -u angeline190 --password-stdin
                        docker push ${DOCKER_IMAGE}
                    """
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                echo "Deploying ${DOCKER_IMAGE} to ${EC2_HOST}"
                sshagent (credentials: ['ec2-user']) {
                    sh """
                        ssh -o StrictHostKeyChecking=no ${EC2_HOST} << 'EOF'
                        docker pull ${DOCKER_IMAGE}
                        docker stop kimai_app || true
                        docker rm kimai_app || true
                        docker run -d --name kimai_app --restart always -p 80:8001 ${DOCKER_IMAGE}
                        EOF
                    """
                }
            }
        }
    }

    post {
        failure {
            echo '💥 Deployment failed!'
        }
        success {
            echo '✅ Deployment successful!'
        }
    }
}
