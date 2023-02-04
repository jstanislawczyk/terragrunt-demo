remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket  = "jstanislawczyk-my-terraform-state"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

# Hooks
#terraform {
#  before_hook "before_hook" {
#    commands     = ["apply", "plan"]
#    execute      = ["tflint"]
#  }
#
#  after_hook "after_hook" {
#    commands     = ["apply", "plan"]
#    execute      = ["tflint"]
#    run_on_error = true
#  }
#}

