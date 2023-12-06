terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "side_scanner_role" {
  source = "github.com/DataDog/terraform-datadog-sidescanner//modules/side-scanner-role"

  account_roles = [module.delegate_role.role.arn]
}

module "delegate_role" {
  source = "github.com/DataDog/terraform-datadog-sidescanner//modules/scanning-delegate-role"

  scanner_role_arn = module.side_scanner_role.role.arn
}

module "sidescanner" {
  source = "github.com/DataDog/terraform-datadog-sidescanner"

  api_key               = var.api_key
  instance_profile_name = module.side_scanner_role.instance_profile.name
}