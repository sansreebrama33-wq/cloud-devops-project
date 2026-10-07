resource "aws_iam_role_policy_attachment" "github_ssm_full_access" {
  role       = aws_iam_role.github_actions_ssm_deploy.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
}

