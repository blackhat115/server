variable "region" {
    default = "us-east-1"
}

variable "availability_zones" {
  default = "us-east-1b"
}

variable "cidr_block_vpc" {
    default = "192.168.0.0/16"
}
variable "cidr_block_subnet" {
    default = "192.168.20.0/24"
}

variable "ami" {
    default = "ami-0574da719dca65348"  
}

variable "instance_type" {
    default = "t2.micro"
}



