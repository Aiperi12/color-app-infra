terraform {
  backend "s3" {
    bucket = "jenkins-session-bucket"             # backend s3 bucket name
    key    = "class/jan24/jenkins/server.tfstate" # backend path and file name
    region = "us-east-1"
  }
}