resource "aws_s3_bucket" "tf_state" {
  bucket = "terraform-state-chameera98-2026"
}

resource "aws_dynamodb_table" "tf_lock" {
  name         = "terraform-lock-chameera"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

