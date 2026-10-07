resource "aws_subnet" "cloud_devops_subnet" {
  vpc_id                  = aws_vpc.cloud_devops_vpc.id
  cidr_block              = "172.31.16.0/20"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "d2"
  }
}


