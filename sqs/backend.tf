# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket  = "jstanislawczyk-my-terraform-state"
    encrypt = true
    key     = "sqs/terraform.tfstate"
    region  = "us-east-1"
  }
}
