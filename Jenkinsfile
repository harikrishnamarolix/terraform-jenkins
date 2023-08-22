pipeline {
    agent any

    environment {
         AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
         AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                git "https://github.com/harikrishnamarolix/terraform-jenkins.git"
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
