variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string

  validation {
    condition     = length(var.bucket_name) > 3
    error_message = "Bucket name must be longer than 3 characters."
  }
}

variable "environment" {
  description = "Environment name (e.g., dev, prod)"
  type        = string

  validation {
    condition     = contains(["dev", "prod", "staging"], var.environment)
    error_message = "Environment must be one of: dev, prod, staging."
  }

}
variable "aws_region" {
  type    = string
  default = "us-west-1" # or override via workspace/environment variable
}