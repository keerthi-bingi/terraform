variable "environment" {
  type        = string
  default     = "dev"
}


variable "aws_region" {
  description = "The AWS region where resources will be provisioned"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0220d79f3f480ecf5" # Example default, replace with a valid ID for your region
}

variable "instance_type" {
  type        = string
  default     = "t3.micro" # Example default, replace with a valid instance type
}

variable "ec2_tags" {
  type        = map
  default = {
    Name = "variables-demo"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
  }
}

variable "sg_name" {
  type        = string
  default     = "allow-all-terraform"
}

variable "sg_description" {
  description     = "Allow TLS inbound traffic and all outbound traffic"
}

variable "from_port" {
  type     = number
  default = 0
}

variable "to_port" {
  type     = number
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map
  default = {
    Name = "allow-all-terraform"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
  }
}