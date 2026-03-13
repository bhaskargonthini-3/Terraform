resource "aws_ecs_service" "ner-trigger-testing" {

  name            = "ner-trigger-testing"
  cluster         = "SMS-Solutioning"
  task_definition = "arn:aws:ecs:ap-south-1:023670702506:task-definition/sms-ner-trigger:39"
  desired_count   = 0
  launch_type     = "FARGATE"

  tags = {
    Name = "ner-trigger-testing"
  }


}


resource "aws_ecs_service" "Ner-Tagging-Service-Dev" {

  name            = "Ner-Tagging-Service-Dev"
  cluster         = "SMS-Solutioning"
  task_definition = "arn:aws:ecs:ap-south-1:023670702506:task-definition/sms-ner-tagging-dev:103"
  desired_count   = 0
  launch_type     = "FARGATE"

  tags = {
    Project = "SMS-Dev-Environment"
    Product = "SMS"
    Owner = "DevOps"
    Task = "NER-Tagging"
  }


}


resource "aws_ecs_service" "sms-file-generation-service" {

  name            = "sms-file-generation-service"
  cluster         = "SMS-Solutioning"
  task_definition = "arn:aws:ecs:ap-south-1:023670702506:task-definition/sms-file-generation-task:2"
  desired_count   = 0
  launch_type     = "FARGATE"

  tags = {
    Project = "One-Time-SMS-Solutioning-Pipeline"
    Product = "SMS"
    Owner = "DevOps"
    Task = "sms-file-generation"
    Name = "sms-file-generation-service"
  }


}


resource "aws_ecs_service" "sms-service-fargate" {

  name            = "sms-service-fargate"
  cluster         = "SMS-Solutioning"
  task_definition = "arn:aws:ecs:ap-south-1:023670702506:task-definition/sms-ner-tagging:10"
  desired_count   = 0
  launch_type     = "FARGATE"

  tags = {
    Project = "SMS-POC-New-Architecture"
    Product = "SMS"
    Owner = "DevOps"
    Task = "First-Task"
  }


}


resource "aws_ecs_service" "ner-tagging-parallel" {

  name            = "ner-tagging-parallel"
  cluster         = "SMS-Solutioning"
  task_definition = "arn:aws:ecs:ap-south-1:023670702506:task-definition/sms-ner-tagging-dev:69"
  desired_count   = 0
  launch_type     = "FARGATE"

  tags = {
    Name = "ner-tagging-parallel"
  }


}


resource "aws_ecs_service" "sms-ner-tagging-service" {

  name            = "sms-ner-tagging-service"
  cluster         = "SMS-Solutioning"
  task_definition = "arn:aws:ecs:ap-south-1:023670702506:task-definition/sms-ner-tagging:14"
  desired_count   = 0
  launch_type     = "FARGATE"

  tags = {
    Project = "SMS-POC-New-Architecture"
    Product = "SMS"
    Owner = "DevOps"
    Task = "First-Task"
  }


}


resource "aws_ecs_service" "sms-feature-generation-fargate" {

  name            = "sms-feature-generation-fargate"
  cluster         = "SMS-Solutioning"
  task_definition = "arn:aws:ecs:ap-south-1:023670702506:task-definition/sms-feature-generation-service:185"
  desired_count   = 0
  launch_type     = "FARGATE"

  tags = {
    Project = "SMS-Dev-Environment"
    Product = "SMS"
    Owner = "DevOps"
    Task = "Feature-Generation"
  }


}


resource "aws_ecs_service" "sftp-web-client-service-c034d370" {

  name            = "sftp-web-client-service-c034d370"
  cluster         = "sftp-ecs-stack-ECSCluster-93ijmoGzT9T5"
  task_definition = "arn:aws:ecs:ap-south-1:023670702506:task-definition/sftp-web-client-service-c034d370:1"
  desired_count   = 3
  launch_type     = "FARGATE"

  tags = {
    Name = "sftp-web-client-service-c034d370"
  }


}