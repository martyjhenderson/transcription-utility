output "bucket-name" {
    value = aws_s3_bucket.transcriptions_bucket.bucket
    description = "Bucket Name for transcriptions"
}