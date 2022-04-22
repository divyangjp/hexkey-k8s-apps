## Two repos

GCP Terraforming -> https://github.com/divyangjp/gke-terraform creates
  - VPC
  - IAM
  - GKE cluster
  - Public IPv4
  - Firewall
  
TODO : Bootstraping terraform service account and terraform state bucket

GKE Apps and Platform -> https://github.com/divyangjp/hexkey-k8s-apps
  - Sinatra App (apps/sinatra) with HealthCheck
  - Weather App
  - Ingress (platform/ingress)
  - CSI Driver for Secrets (not yet implemented)
  - Github Actions to deploy apps and platform changes via Workload Identity (doesn't require longterm passwords/tokens)
  
Github Actions to do CD or use `kubectl` to deploy

TODO: 
  - Secret management via CSI Driver
  - Istio service mesh!

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

Sinatra App URL -> https://hexkey.io/sinatra   
Weather App URL -> https://hexkey.io/weatherforecast   
