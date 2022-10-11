resource "random_pet" "bucket_id" {
    separator = "-"
    length = 3
}

resource "aws_s3_bucket" "transcriptions_bucket" {
  bucket = "completed-${random_pet.bucket_id.id}"
}

resource "aws_s3_bucket_acl" "transcriptions_acl" {
  bucket = aws_s3_bucket.transcriptions_bucket.id
  acl    = "private"
}


resource "aws_s3_bucket_server_side_encryption_configuration" "transcriptions_sse" {
  bucket = aws_s3_bucket.transcriptions_bucket.bucket
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.transcription_kms.arn
      sse_algorithm     = "aws:kms"
    }
  }
}