#!/bin/bash

# Add the EKS Helm repository
helm repo add eks https://aws.github.io/eks-charts

# Update the Helm repositories
helm repo update

# Set your cluster name, region, and VPC ID
CLUSTER_NAME="myapp-eks-cluster"
REGION="eu-west-2"
VPC_ID="<your-vpc-id>"

# Install the AWS Load Balancer Controller
helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName="${CLUSTER_NAME}" \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set region="${REGION}" \
  --set vpcId="${VPC_ID}"
