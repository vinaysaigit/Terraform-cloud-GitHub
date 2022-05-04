terraform {
    required_version = "~> 1.1.0" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.7.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0022f774911c1d690" 
	instance_type = "t2.micro"
}
