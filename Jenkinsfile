pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials ('aws_access_key_id')
        AWS_SECRET_ACCESS_KEY = credentials ('aws_secret_access_key')
    }
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
                dir('infra') {
                    echo "Running Terraform Init"
                    sh 'terraform init'
                }
            }
        } 
        stage ('tf-validate') {
            steps {
                dir ('infra') {
                    echo "Running Terraform Validate"
                    sh 'terraform validate'
                        
                }
            }
        }
        stage ('tf-plan') {
            steps {
                dir ('infra') {
                    echo "Running Terraform Plan"
                    sh 'terraform plan'
                }
            }
        }
    }
    post {
        always {
            cleanWs()
            }
    }
}
