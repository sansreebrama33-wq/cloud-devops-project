resource "aws_vpc_peering_connection" "cloud_devops_peering" {
  vpc_id      = "vpc-0ebb0f85ebb200e1f"
  peer_vpc_id = aws_vpc.cloud_devops_vpc.id

  tags = {
    Name = "my-vpc"
  }
}

