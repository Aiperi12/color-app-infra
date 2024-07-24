pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials ('ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials ('SECRET_KEY_ID')
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
                    sh '''
                        terraform init
                        terraform validate
                        
                        '''
                }
            }
        }
        stage ('tf-plan') {
            steps {
                dir ('infra') {
                    echo "Running Terraform Plan"
                    sh '''
                        terraform init
                        terraform validate
                        terraform plan
                        
                        '''
                }
            }
        }
        stage ('tf-apply') {
            steps {
                dir ('infra') {
                    script {
                        input message: 'Do you want to apply the Terraform changes?', ok: 'Apply'
                    }
                    echo "Running Terraform Apply"
                    sh '''
                        terraform init
                        terraform validate
                        terraform plan
                        terraform apply --auto-approve
                        
                        '''
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