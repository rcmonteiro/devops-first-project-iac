variable "s3_bucket_name" {
  type        = string
  description = "Bucket name"
}

variable "s3_tags" {
  type        = map(string)
  default     = {}
  description = "Tags do S3"
}