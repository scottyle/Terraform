For this part of the lab we will be writing a terraform script using AWS EC2 instances and applying the following kinds of variables listed below.

Input variables: https://www.terraform.io/language/values/variables

Input variables let you customize aspects of terraform modules. Variable declarations can appear anywhere in configuration files but Terraform recommends putting them into a seperate file called variables.tf 

An example of an input variable is defined below, this hardcoded value is then replaced with a reference to that variable. 

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

Variable blocks have three optional arguments:
1. Description - Short description to document the purpose of the variable
2. Type - Type of data contained in the variable 
3. Default - Default value 

Part - 1

    Write a terraform script using aws ec2 instance and github and apply following kind of variables

    Types of Terraform variable – Number

    Types of Terraform variable – String

    Types of Terraform variable – List

    Types of Terraform variable – Map

    Types of Terraform variable – Boolean