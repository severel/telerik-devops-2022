provider "aws" {
  region = var.region
}

module "s3-state" {
  source        = "../../../modules/s3_state"
  bucket-name   = var.bucket
  env_name      = var.env_name
  region        = var.region
  force_destroy = false
}

