# Custom VPC Example

This folder shows an example of Terraform code let you deploy the Datadog side-scanner in your own managed VPC.

## Quick start

To deploy a Datadog side scanner:

1. Run `terraform init`.
1. Run `terraform apply`.
1. Set your datadog [API key](https://docs.datadoghq.com/account_management/api-app-keys/).
1. Set your the `subnet_id` you want the side-scanner to be deployed in.