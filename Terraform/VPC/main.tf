resource "aws_vpc" "main" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = var.enable_dns_hostnames

    tags = {
        Name = "projectvpc"
    }
}

data "aws_availability_zones" "available" {
    state = "available"
}

resource "aws_subnet" "public-subnet-1" {
    cidr_block = var.public_cidr
    availability_zone = data.aws_availability_zones.available.names[0]
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = true

} 

resource "aws_subnet" "private-subnet-1" {
    cidr_block = var.private_cidr
    availability_zone = data.aws_availability_zones.available.names[1]
    vpc_id = aws_vpc.main.id

} 

resource "aws_internet_gateway" "gw" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = "main"
    }
}

resource "aws_route_table" "r" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id
    }

    tags = {
        Name = "rt"

    }
}
resource "aws_route_table_association" "sub1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.r.id

}

resource "aws_route_table" "pr" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = "rt"

    }
}
resource "aws_route_table_association" "sub2" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.pr.id

}
 
