pipeline {
    agent any

    environment {
        REMOTE_HOST = '13.60.199.9'
        REMOTE_USER = 'ec2-user'
        IMAGE_NAME = 'angeline190/kimai-prod'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/dhanalakshmim-eng/Cloud-Migration-Project2.git'
            }
        }

stage('Deploy to EC2') {
  steps {
    withCredentials([sshUserPrivateKey(credentialsId: 'ec2-user-creds', keyFileVariable: 'KEY')]) {
      sh """
        ssh -o StrictHostKeyChecking=no -i $KEY REMOTE_USER@REMOTE_HOST << 'ENDSSH'
echo "✅ SSH Connected!"

cd Cloud-Migration-Project/kimai

echo "🧹 Stopping & removing old containers..."
docker-compose down

echo "🚀 Starting fresh containers with Compose..."
docker-compose pull
docker-compose up -d
ENDSSH
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
