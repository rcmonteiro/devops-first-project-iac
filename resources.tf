resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.org_name}-rcmonteiro-iac-${terraform.workspace}"

  tags = {
    Name = "Primeiro Bucket"
    IaC  = true
    context = "${terraform.workspace}"
  }
}
