provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "7a6913bc-1c49-4509-95ce-eb7231cf6e4d"
    git_commit           = "9f991c2bb55b080d86aa97443d6b65f8a3de9765"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:33:03"
    git_last_modified_by = "ssdeepan@gmail.com"
    git_modifiers        = "ssdeepan"
    git_org              = "ssdeepan"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
