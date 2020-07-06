#aws_vpc = ["vpc-10-1", "vpc-10-2]

variable "aws_cidr" {
  default = {
    "vpc-10-1" = "10.1.0.0/16"
    "vpc-10-2" = "10.2.0.0/16"
  }
}

variable "aws_vpc" {
    type    = list
    default = ["vpc-10-1", "vpc-10-2"]
}

variable "mycount" {
    default = 2
}

