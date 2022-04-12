terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "4.5.0"
        }
    }
}

resource "aws_instance" "webserver" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
}
