#!/bin/bash

# Install AWS Load Balancer Controller via Helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# Add EKS Helm repo
helm repo add eks https://aws.github.io/eks-charts
helm repo update

# Install AWS Load Balancer Controller
helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=$(terraform -chdir=terraform output -raw cluster_name) \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller