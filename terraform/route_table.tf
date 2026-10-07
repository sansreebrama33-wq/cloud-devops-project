resource "aws_route_table" "cloud_devops_route_table" {
  vpc_id = aws_vpc.cloud_devops_vpc.id

  route {
    cidr_block                = "192.168.10.0/24"
    vpc_peering_connection_id = "pcx-020d0a1f79d4d38da"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloud_devops_igw.id
  }

  tags = {
    Name = "default"
  }
}

