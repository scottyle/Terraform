terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "4.5.0"
        }
        github = {
            source = "integrations/github"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
  region = "us-east-1"
}

#Local module 
module "scotts-webserver"{
    source = "./modules"
}

module "my-vpc"{
    source = "terraform-aws-modules/vpc/aws"
    name = "my-vpc"
    cidr = "192.168.0.0/16"

    azs = ["us-east-1", "us-east-2"]
    private_subnets = ["192.168.1.0/24", "192.168.2.0/24"]
    public_subnets = ["192.168.101.0/24", "192.168.102.0/24"]
}