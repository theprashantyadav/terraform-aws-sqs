# Module      : SQS
# Description : Terraform module to create SQS resource on AWS for managing queue.
output "id" {
  value = concat(
    aws_sqs_queue.default.*.id
  )[0]
  description = "The URL for the created Amazon SQS queue."
}

output "arn" {
  value = concat(
    aws_sqs_queue.default.*.arn
  )[0]
  description = "The ARN of the SQS queue."
}

output "tags" {
  value       = module.labels.tags
  description = "A mapping of tags to assign to the resource."
}