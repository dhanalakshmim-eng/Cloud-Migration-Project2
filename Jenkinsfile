pipeline {
  agent any

  environment {
    IMAGE_NAME = "angeline190/kimai-prod"
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/angelinedev/Cloud-Migration-Project.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t angeline190/kimai-prod ./kimai'
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

    stage('Deploy') {
      steps {
        echo 'Deploying to EC2...'
        // Optional: you can add SSH script to restart container here
        // Or automate with Ansible/scripts later 💪
      }
    }
  }
}

