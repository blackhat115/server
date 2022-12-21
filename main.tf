
resource "aws_vpc" "dev_vpc" {
    cidr_block = var.cidr_block_vpc
    enable_dns_hostnames = true

    tags = {
      Name = "dev_vpc"
    }
}

resource "aws_subnet" "dev_subnet" {
    vpc_id = aws_vpc.dev_vpc.id
    cidr_block = var.cidr_block_subnet
    availability_zone = var.availability_zones

    tags = {
      Name = "dev_subnet"
    }
}

resource "aws_internet_gateway" "dev_igw" {
    vpc_id = aws_vpc.dev_vpc.id

    tags = {
      Name = "dev_igw"
    }
  
}

resource "aws_route_table" "dev_routetable" {
    vpc_id = aws_vpc.dev_vpc.id

    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.dev_igw.id
    }

    tags = {
      Name = "dev_routetable"
    }
  
}

resource "aws_route_table_association" "dev_route_association" {
    subnet_id = aws_subnet.dev_subnet.id
    route_table_id = aws_route_table.dev_routetable.id

}
