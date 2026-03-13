resource "aws_sqs_queue" "refresh-table-queue" {

  name                       = "refresh-table-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 3600
  delay_seconds              = 0

  tags = {
    Name = "refresh-table-queue"
  }


}