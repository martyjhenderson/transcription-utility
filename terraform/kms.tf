resource "aws_kms_key" "transcription_kms" {
  description             = "This key is used to encrypt all data"
  deletion_window_in_days = 10
  key_usage = "ENCRYPT_DECRYPT"
}