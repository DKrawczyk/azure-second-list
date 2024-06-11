provider "aws" {
  access_key                  = "some_access_key"
  secret_key                  = "some_secret_key"
  region                      = var.region
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    s3                        = "http://localhost:8000"
  }
}

resource "aws_s3_bucket" "DKrawczyk-bucket" {
  bucket = var.bucket_name
}