pipeline {
    agent any

    environment {
        REMOTE_HOST = '13.48.47.64'
        REMOTE_USER = 'ec2-user'
        IMAGE_NAME = 'angeline190/kimai-prod'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/angelinedev/Cloud-Migration-Project.git'
            }
        }

        stage('Deploy to EC2') {
            steps {
                withCredentials([sshUserPrivateKey(credentialsId: 'ec2-ssh-creds', keyFileVariable: 'KEY')]) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no -i $KEY $REMOTE_USER@$REMOTE_HOST <<EOF
                            echo "✅ SSH Connected!"
                            sudo systemctl restart docker
                            echo "🔥 Simulating deployment..."
                            # you can put your git pull or file transfer logic here if needed
                        EOF
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
