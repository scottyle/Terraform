terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "4.5.0"
        }
    }
}

provider "aws" {
  region = "us-east-1"

}

# Key_name is taken from the argument reference from https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "ansible_ec2"{
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    key_name = "SDN-Terraform"

    connection {
        type = "ssh"
        user = "root"
        private_key = file("/mnt/c/Users/scott/Documents/SDN-Terraform.pem")
        host  = self.public_ip 
    }

    provisioner "file" {
        source = "/mnt/c/Users/scott/Documents/hello-world.yml"
        destination = "/tmp/"
    }

    #Provisioner to install ansible 
    provisioner "remote-exec" {

    inline = [
                "sudo yum update",
                "sudo yum install ansible",
	            "sudo systemctl start ansible",
 
             ] 
    }
    #Provisioner to run ansible playbook. 
    provisioner "remote-exec"{

    inline =[
                "ansible-playbook hello-world.yml"
            ]
    }

}


