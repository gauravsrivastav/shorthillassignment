##create a ec2 instance with a public ip by gaurav

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "web_server" {
  key_name = "awsdevopss"
  ami           = "ami-013f17f36f8b1fefb"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  monitoring = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "ApacheServer"
  }
}
