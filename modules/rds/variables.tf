variable "vpc_id" {
  type = string
}

variable "ec2_sg" {
  type = string
}

variable "subnets" {
  type = list(string)
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
}

