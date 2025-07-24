variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string

  validation {
    condition     = length(var.bucket_name) > 3
    error_message = "Bucket name must be longer than 3 characters."
  }
}

variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)

  validation {
    condition     = contains(keys(var.tags), "Environment")
    error_message = "Tags must include an 'Environment' key."
  }
}