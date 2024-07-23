pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                echo "testing"
            }
        }
        stage('tf-version') {
            steps {
                echo "Checking Terraform Version"
                sh 'terraform -v'
            }
        }
        stage('tf-init') {
            steps {
                echo "Checking Terraform Version"
                sh 'terraform init'
            }
        }
    }
}