resource "aws_s3_bucket" "main" {
  bucket = "my-jenkins-test-bucket"

  tags = {
    Name        = "My jenkins bucket"
  }
}