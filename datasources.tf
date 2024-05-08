data "aws_s3_bucket" "bucket" {
  bucket = "${var.org_name}-rcmonteiro-iac-${terraform.workspace}"
}