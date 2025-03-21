# ? and :
# condition ? true_value : false_value

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.91.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "environment" {
  default = "dev"
}

resource "aws_instance" "example" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"

  tags = {
    Name = "EC2 - ${var.environment}"
  }
}
