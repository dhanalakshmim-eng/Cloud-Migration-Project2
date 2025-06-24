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
                git branch: 'main', url: 'https://github.com/angelinedev/Cloud-Migration-Project.git'
            }
        }

stage('Deploy to EC2') {
    steps {
        withCredentials([sshUserPrivateKey(credentialsId: 'ec2-ssh-creds', keyFileVariable: 'KEY')]) {
            sh """
                ssh -o StrictHostKeyChecking=no -i \$KEY \$REMOTE_USER@\$REMOTE_HOST << 'EOF'
echo "✅ SSH Connected!"
sudo systemctl restart docker
echo "🔥 Pulling latest image..."
docker pull angeline190/kimai-prod
echo "🧹 Cleaning old container..."
docker stop kimai_app || true
docker rm kimai_app || true
echo "🚀 Starting new container..."
docker run -d \\
  --name kimai_app \\
  -p 8001:8001 \\
  angeline190/kimai-prod
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
            echo '🚀 Deployment succeeded!'
        }
    }
}
