resource "aws_ecs_service" "ChatbotStack-ChatbotFrontendService1BBA8B0F-xvzrXoednd5q" {

  name            = "ChatbotStack-ChatbotFrontendService1BBA8B0F-xvzrXoednd5q"
  cluster         = "chatbot-cluster"
  task_definition = "arn:aws:ecs:us-west-2:023670702506:task-definition/ChatbotStackChatbotFrontendTaskDef43742AC2:2"
  desired_count   = 1
  launch_type     = "FARGATE"

  tags = {
    Name = "ChatbotStack-ChatbotFrontendService1BBA8B0F-xvzrXoednd5q"
  }


}


resource "aws_ecs_service" "iris-streaming-svc" {

  name            = "iris-streaming-svc"
  cluster         = "Scien-Ether-IRIS-Dev-Cluster"
  task_definition = "arn:aws:ecs:us-west-2:023670702506:task-definition/iris-streaming:3"
  desired_count   = 1
  launch_type     = "FARGATE"

  tags = {
    Customer = "INTERNAL-IRIS"
  }


}