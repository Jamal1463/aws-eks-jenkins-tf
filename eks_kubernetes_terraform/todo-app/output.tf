# Creating Output's
/*
output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.terraform_bucket.bucket
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.terraform_bucket.arn
}

output "terraform_bucket_versioning"{
    value = aws_s3_bucket.terraform_bucket.versioning[0].enabled
}

output "terraform_bucket_complete_details" {
    value = aws_s3_bucket.terraform_bucket
}
*/