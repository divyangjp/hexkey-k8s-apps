#!/bin/bash

# Install secrets-store-csi-driver helm chart

helm repo add secrets-store-csi-driver https://kubernetes-sigs.github.io/secrets-store-csi-driver/charts
helm install csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver --namespace kube-system

# Get plugin for GCP Secret manager
wget -O /tmp/provider-gcp-plugin.yaml \
    https://raw.githubusercontent.com/GoogleCloudPlatform/secrets-store-csi-driver-provider-gcp/main/deploy/provider-gcp-plugin.yaml

kubectl apply -f /tmp/provider-gcp-plugin.yaml
