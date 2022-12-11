### uncomment this after you create the bucket; run terraform init once again
terraform {
  backend "s3" {
    key = "s3_state/terraform.tfstate"
  }
}
