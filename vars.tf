variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "region" {
  default = "ap-south-1"
}

variable "environment" {
  description = "Deployment Environment"
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
  default     = "172.20.0.0/16"
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Public Subnet"
  default     = ["172.20.10.0/24"]
}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Private Subnet"
  default     = ["172.20.20.0/24"]
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-076e3a557efe1aa9c"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "cidr_blocks" {
  description = "CIDR Block to allow Jenkins Access"
  default = "0.0.0.0/0"
}
