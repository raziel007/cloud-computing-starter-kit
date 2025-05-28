provider "aws" {
  region = "us-east-1"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "beginner_bucket" {
  bucket = "my-cloud-starterkit-bucket-${random_id.bucket_id.hex}"
  # acl    = "private" # ACLs are generally not recommended for new buckets.
                       # Default is private. Consider bucket policies and IAM for more control.
}

resource "aws_s3_bucket_ownership_controls" "beginner_bucket_ownership" {
  bucket = aws_s3_bucket.beginner_bucket.id
  rule {
    object_ownership = "BucketOwnerEnforced" # Simplifies ownership; all objects owned by bucket owner.
                                             # Disables ACLs for the bucket and its objects.
  }
}

resource "aws_s3_bucket_public_access_block" "beginner_bucket_access_block" {
  bucket = aws_s3_bucket.beginner_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# You might also want to add aws_s3_bucket_versioning,
# aws_s3_bucket_server_side_encryption_configuration, etc., based on your needs.

output "bucket_name" {
  value = aws_s3_bucket.beginner_bucket.bucket
}

output "bucket_id" {
  value = aws_s3_bucket.beginner_bucket.id
}
