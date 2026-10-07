resource "aws_internet_gateway" "cloud_devops_igw" {
  vpc_id = aws_vpc.cloud_devops_vpc.id

  tags = {
    Name = "default"
  }
}

