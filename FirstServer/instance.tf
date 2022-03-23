terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
access_key = "AKIA2SQ6E3JRYDQRJWDO"
secret_key = "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"
region = "us-east-1"
}

resource "aws_instance" "hello-instance" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  tags = {
    Name = "hello-instance"
  }
}

