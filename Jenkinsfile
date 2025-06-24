pipeline {
  agent any

  environment {
    IMAGE_NAME = "angeline190/kimai-prod"
    EC2_HOST   = "13.48.47.64"
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main',
            url: 'https://github.com/angelinedev/Cloud-Migration-Project.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t $IMAGE_NAME ./kimai'
      }
    }

    stage('Push to DockerHub') {
      steps {
        withCredentials([
          usernamePassword(
            credentialsId: 'dockerhub-creds',
            usernameVariable: 'DOCKER_USER',
            passwordVariable: 'DOCKER_PASS'
          )
        ]) {
          sh '''
            echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
            docker push $IMAGE_NAME
          '''
        }
      }
    }

    stage('Deploy to EC2') {
      steps {
        echo "Deploying $IMAGE_NAME to EC2@$EC2_HOST"
        sshagent(['ec2-ssh-creds']) {
          sh """
            ssh -o StrictHostKeyChecking=no ec2-user@$EC2_HOST << 'EOF'
              docker pull $IMAGE_NAME

              docker stop kimai_app || true
              docker rm kimai_app || true

              docker run -d \\
                --name kimai_app \\
                --network host \\
                -e DATABASE_URL="mysql://kimai:Angeline@localhost:3306/kimai" \\
                -e APP_ENV=prod \\
                -e ADMINMAIL=admin@example.com \\
                -e ADMINPASS=Angeline \\
                -p 8001:8001 \\
                $IMAGE_NAME
            EOF
          """
        }
      }
    }
  }

  post {
    success {
      echo '🎉 Deployment succeeded!'
    }
    failure {
      echo '💥 Deployment failed!'
    }
  }
}
