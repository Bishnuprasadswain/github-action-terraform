variable "ami_id" {
  type = string
  description = "This is to define the ami_id"
  default = "ami-06031e2c49c278c8f"
}

variable "instance_type" {
    type = string
    description = "Pass the instance type"
    default = "t2.micro"
}

variable "tags" {
  type = map(string)
  default = {
    "Name" = "my-instance"
  }
}