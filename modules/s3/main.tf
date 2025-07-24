module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  tags        = {
    Name        = var.bucket_name
    Environment = var.environment
    Owner       = "Felix"
  }
}