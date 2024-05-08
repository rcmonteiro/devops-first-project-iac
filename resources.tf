resource "aws_s3_bucket" "s3_bucket" {
  bucket = "devops-rocketseat-rcmonteiro-iac"

  tags = {
    Name = "Primeiro Bucket"
    IaC  = true
  }
}
