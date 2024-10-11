terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.71.0"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
