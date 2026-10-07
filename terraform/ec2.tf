resource "aws_instance" "cloud_devops_ec2" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  subnet_id = "subnet-09de2eeb1c949a1dc"

  vpc_security_group_ids = [
    aws_security_group.cloud_devops_sg.id
  ]

  tags = {
    Name = "cloud-devops-ec2"
  }
}
