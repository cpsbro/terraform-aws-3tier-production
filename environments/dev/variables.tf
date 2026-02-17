# AWS
variable "aws_region" {
  type = string
}

# VPC
variable "vpc_cidr" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

# EC2
variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

# RDS
variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

