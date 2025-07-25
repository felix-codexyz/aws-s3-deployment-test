variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the bucket"
}

variable "environment" {
  type        = string
  description = "Environment name"
}