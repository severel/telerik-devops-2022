provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "state-store" {
  bucket        = var.bucket-name
  acl           = "private"
  force_destroy = var.force_destroy

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = true
  }

  tags = {
    Name        = var.bucket-name
    Description = "This bucket is used for storing terraform state."
    env         = var.env_name
  }

}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.state-store.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_policy" "state-store" {
  bucket = aws_s3_bucket.state-store.id
  policy = data.aws_iam_policy_document.state-store.json
}

data "aws_iam_policy_document" "state-store" {
  statement {
    sid    = "AllowSSLRequestsOnly"
    effect = "Deny"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    actions = ["s3:*"]
    resources = [
      "arn:aws:s3:::${aws_s3_bucket.state-store.id}",
      "arn:aws:s3:::${aws_s3_bucket.state-store.id}/*"
    ]
    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["false"]
    }
  }
}
