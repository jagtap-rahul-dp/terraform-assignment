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

variable "pub_subnet_id" {
    description = "subnet id for ec2 instance"
    type = any
}

variable "prv_subnet_id" {
    description = "subnet id for ec2 instance"
    type = any
}

variable "sec_group" {
    description = "security group"
    type = any
}

variable "default_sec_group" {
    description = "security group"
    type = any
}

variable "monitoring" {
    description = "monitoring"
    type = string
}
