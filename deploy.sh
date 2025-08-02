#!/bin/bash

# Deploy infrastructure
cd terraform
terraform init
terraform plan
terraform apply -auto-approve

# Configure kubectl
aws eks update-kubeconfig --region $(terraform output -raw region) --name $(terraform output -raw cluster_name)

# Install AWS Load Balancer Controller
cd ..
./install-alb-controller.sh

# Deploy application
cd k8s
kubectl apply -f secret.yaml
kubectl apply -f deployment.yaml

echo "Deployment complete!"
echo "Get LoadBalancer URL with: kubectl get svc netflix-clone-service"