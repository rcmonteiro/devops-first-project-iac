resource "aws_s3_bucket" "s3_bucket" {
  bucket = "devops-rocketseat-rcmonteiro-iac-${terraform.workspace}"

  tags = {
    Name = "Primeiro Bucket"
    IaC  = true
    context = "${terraform.workspace}"
  }
}
