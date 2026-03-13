resource "aws_sqs_queue" "batch-file-upload" {

  name                       = "batch-file-upload"
  visibility_timeout_seconds = 300
  message_retention_seconds  = 345600
  delay_seconds              = 0

  tags = {
    Project = "Batch-IRIS"
    Customer = "INTERNAL-UTILITY"
  }


}


resource "aws_sqs_queue" "evaluate-request" {

  name                       = "evaluate-request"
  visibility_timeout_seconds = 10
  message_retention_seconds  = 345600
  delay_seconds              = 0

  tags = {
    Project = "Batch-IRIS"
    Customer = "INTERNAL-UTILITY"
  }


}


resource "aws_sqs_queue" "iris-eval-queue" {

  name                       = "iris-eval-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 345600
  delay_seconds              = 0

  tags = {
    Project = "Batch-IRIS"
    Customer = "INTERNAL-UTILITY"
  }


}