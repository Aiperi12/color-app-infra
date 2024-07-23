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
                dir('infra') {
                    echo "Running Terraform Init"
                    sh 'terraform init'
                }
            }
        }
        post {
            always {
                cleanWs()
            }
        }
        // stage ('tf-validate') {
        //     steps {
        //         dir ('infra') {
        //             echo "Running Terraform Validate"
        //             sh 'terraform validate'
        //         }
        //     }
        // }
        // stage ('tf-plan') {
        //     steps {
        //         dir ('infra') {
        //             echo "Running Terrafrom Plan"
        //             sh 'terraform plan'
        //         }
        //     }
        // }
    // }
}