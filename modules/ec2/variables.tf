variable "vpc_id" {
  description = "VPC ID where EC2 instances will be deployed"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs where EC2 instances will be launched"
  type        = list(string)
}

variable "alb_sg" {
  description = "Security group of the ALB to allow traffic from"
  type        = string
}

variable "ami" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

