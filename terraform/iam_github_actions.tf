resource "aws_iam_role" "github_actions_ssm_deploy" {
  name = "GitHubActions-SSM-Deploy"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "AllowGitHubActionsOIDC"
        Effect = "Allow"

        Principal = {
          Federated = "arn:aws:iam::148996982198:oidc-provider/token.actions.githubusercontent.com"
        }

        Action = "sts:AssumeRoleWithWebIdentity"

        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
            "token.actions.githubusercontent.com:sub" = "repo:sansreebrama33-wq@282270348/cloud-devops-project@1371199220:ref:refs/heads/main"
          }
        }
      }
    ]
  })
}






