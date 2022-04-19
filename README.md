## Two repos

GCP Terraforming -> https://github.com/divyangjp/gke-terraform creates
  - VPC
  - IAM
  - GKE cluster

GKE Apps and Platform -> https://github.com/divyangjp/hexkey-k8s-apps
  - Weather App
  - Ingress
  - CSI Driver (not yet implemented)
  - Github Actions to deploy apps and platform changes via Workload Identity

## Gke-terraform 
Uses `env` dir to manage environment specific configs

```sh
# terraform init
terraform init --backend-config=./env/prod.backend

# terraform plan
terraform plan --var-file=./env/prod.tfvars

# terraform apply
terraform apply --var-file=./env/prod.tfvars
```

## Weather App

Deployed Weather App URL -> https://hexkey.io/weatherforecast
Health -> https://hexkey.io/health
