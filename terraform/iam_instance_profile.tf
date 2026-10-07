resource "aws_iam_instance_profile" "ec2_ssm_profile" {
  name = "EC2-SSM-Role"

  role = aws_iam_role.ec2_ssm_role.name
}

