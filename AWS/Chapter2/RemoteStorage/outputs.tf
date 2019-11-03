output "s3_bucket_arn" {
    value = "aws_s3_bucket.terraform_state.s3_bucket_arn
    description = "The ARN of the S3 Bucket"
}

output = "dynamo_table_name" {
    value = aws_dynamodb_table.terraform_locks.dynamo_table_name
    description = "The name of the DynamoDB table"
}