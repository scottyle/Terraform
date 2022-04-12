# Terraform block contains terraform settings including the required providers that Terraform will use to provision the infrastructure

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

# Provider block configures the specified provider 
provider "aws" {
  region  = "us-east-1"
}

# Resource block - declares a resource of a given type. Resource type and name serves as an identifier for a given resource. 
# The resource block will have two strings before the block, the resource type and resource name 

resource "aws_instance" "scotts-server" {
  ami           = var.ami_id[0]
  instance_type = var.ami_instance_type
  count = var.num_of_instances
  associate_public_ip_address = var.enable_public_ip
  tags = var.tags
}
