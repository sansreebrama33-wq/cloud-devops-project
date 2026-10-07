terraform {
  backend "s3" {
    bucket       = "cloud-devops-terraform-state-148996982198"
    key          = "cloud-devops/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
