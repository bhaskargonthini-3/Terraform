terraform {
  backend "s3" {
    bucket         = "terra-dev-statemgmt"
    key            = "dev/vpc/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}