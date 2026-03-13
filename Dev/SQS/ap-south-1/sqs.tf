resource "aws_sqs_queue" "phone_number_upload" {

  name                       = "phone_number_upload"
  visibility_timeout_seconds = 1200
  message_retention_seconds  = 345600
  delay_seconds              = 0

  tags = {
    Project = "One-Time-SMS-Solutioning-Pipeline"
    Product = "SMS"
    Owner = "DevOps"
    Task = "sms-phone-number-export"
    Customer = "INTERNAL-SMS"
  }


}


resource "aws_sqs_queue" "sms-testing-queue" {

  name                       = "sms-testing-queue"
  visibility_timeout_seconds = 300
  message_retention_seconds  = 14400
  delay_seconds              = 0

  tags = {
    Project = "SMS-Dev-Environment"
    Product = "SMS"
    Owner = "DevOps"
    Task = "NER-Tagging"
    Customer = "INTERNAL-SMS"
  }


}


resource "aws_sqs_queue" "sms-testing-queue-2" {

  name                       = "sms-testing-queue-2"
  visibility_timeout_seconds = 300
  message_retention_seconds  = 14400
  delay_seconds              = 0

  tags = {
    Project = "SMS-Dev-Environment"
    Product = "SMS"
    Owner = "DevOps"
    Task = "NER-Tagging"
    Customer = "INTERNAL-SMS"
  }


}


resource "aws_sqs_queue" "sms_solutioning_dump_queue" {

  name                       = "sms_solutioning_dump_queue"
  visibility_timeout_seconds = 300
  message_retention_seconds  = 1209600
  delay_seconds              = 0

  tags = {
    Project = "SMS-Dev-Environment"
    Product = "SMS"
    Owner = "DevOps"
    Task = "NER-Tagging"
    Customer = "INTERNAL-SMS"
  }


}


resource "aws_sqs_queue" "sms_solutioning_filtered_sms_queue" {

  name                       = "sms_solutioning_filtered_sms_queue"
  visibility_timeout_seconds = 300
  message_retention_seconds  = 1209600
  delay_seconds              = 0

  tags = {
    Project = "SMS-POC-New-Architecture"
    Product = "SMS"
    Owner = "DevOps"
    Task = "First-Task"
    Customer = "INTERNAL-SMS"
  }


}


resource "aws_sqs_queue" "sms_solutioning_phonenumber_queue" {

  name                       = "sms_solutioning_phonenumber_queue"
  visibility_timeout_seconds = 120
  message_retention_seconds  = 345600
  delay_seconds              = 0

  tags = {
    Project = "SMS-Dev-Environment"
    Product = "SMS"
    Owner = "DevOps"
    Task = "Feature-Generation"
    Customer = "INTERNAL-SMS"
  }


}


resource "aws_sqs_queue" "sms_solutioning_sms_file_queue" {

  name                       = "sms_solutioning_sms_file_queue"
  visibility_timeout_seconds = 300
  message_retention_seconds  = 345600
  delay_seconds              = 0

  tags = {
    Project = "One-Time-SMS-Solutioning-Pipeline"
    Product = "SMS"
    Owner = "DevOps"
    Task = "sms-file-export-name"
    Customer = "INTERNAL-SMS"
    Name = "sms_solutioning_sms_file_queue"
  }


}