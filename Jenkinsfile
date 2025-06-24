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
            sh '''
                ssh -o StrictHostKeyChecking=no -i $KEY $REMOTE_USER@$REMOTE_HOST << 'EOF'
                    echo "✅ SSH Connected!"
                    cd Cloud-Migration-Project/kimai
                    echo "🧹 Stopping old containers..."
                    docker compose down || true
                    echo "🚀 Starting fresh containers with Compose..."
                    docker compose pull
                    docker compose up -d
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
