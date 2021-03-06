variable "create" {
  description = "Whether to create all resources"
  default     = true
}

variable "create_with_kms_key" {
  description = "Whether to create resources with KMS encryption"
  default     = false
}

variable "lambda_function_name" {
  description = "The name of the Lambda function to create"
  default     = "notify_slack"
}

variable "sns_topic_arns" {
  description = "The arns of the SNS topic to subscribe to"
  type = "list"
}

variable "sns_topic_count" {
  description = "Count of sns topics in sns_topic_arns, see https://github.com/hashicorp/terraform/issues/10857"
}

variable "slack_webhook_url" {
  description = "The URL of Slack webhook"
}

variable "slack_channel" {
  description = "The name of the channel in Slack for notifications"
}

variable "slack_username" {
  description = "The username that will appear on Slack messages"
}

variable "slack_emoji" {
  description = "A custom emoji that will appear on Slack messages"
  default     = ":aws:"
}

variable "log_group" {
  description = "Some alerts will include a link to cloudwatch logs, the log_group specified here will be used for filtering"
  default     = "rock"
}

variable "kms_key_arn" {
  description = "ARN of the KMS key used for decrypting slack webhook url"
  default     = ""
}

variable "fallback_sns" {
  description = "Fallback SNS to alarm to upon lambda failure. The lambda will automatically subscribe to this also."
  default = ""
}

variable "create_fallback" {
  description = "Whether the fallback is provided, use 1 to enable"
  default = 0
}
