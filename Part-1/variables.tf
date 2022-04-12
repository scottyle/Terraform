variable "num_of_instances"{
    description = "Number of instances for the EC2"
    type = number 
    default = 1 
}

variable "ami_instance_type"{
    description = "AMI type"
    type = string 
    default = "t2.micro"
}

#A list value is an ordered sequence of strings indexed by integers starting with zero

variable "ami_id"{
    description = "AMI Machine ID"
    type = list(string) 
    default = ["ami-0c02fb55956c7d316", "ami-03e0b06f01d45a4eb"]
}

# A map value is a lookup table from string keys to string values 
variable "tags" {
  type = map(string)
  default = {
    Name       = "test"
    Owner      = "Scott Le"
    Purpose    = "Testing"
  }
}

variable "enable_public_ip"{
    description = "Enable public IP addr"
    type = bool
    default = false 
}



