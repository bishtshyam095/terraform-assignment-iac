terraform {
    cloud {
    organization = "pilot-terraform"
    workspaces {
      name = "learn-tfc-aws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0efcece6bed30fd98"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
