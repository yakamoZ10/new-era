terraform {
  backend "s3" {
    bucket       = "terraform-testing-ardin"
    key          = "terraform-functions/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
  }
}