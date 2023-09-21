# aws-eks-2048

EKS Cluster and 2048 Game Deployment
This repository contains Terraform code for creating an Amazon Elastic Kubernetes Service (EKS) cluster in the AWS eu-west-2 region and deploying a 2048 game application on it. It also includes a script to install the AWS Load Balancer Controller for managing application load balancing.

Prerequisites
Before you begin, ensure you have the following prerequisites:

AWS CLI: Install AWS CLI

Terraform: Install Terraform

kubectl: Install kubectl

Helm: Install Helm

Set up your AWS credentials using the AWS CLI:

Copy code
aws configure
Terraform Configuration
Clone this repository to your local machine:

bash
Copy code
git clone <repository-url>
Change into the repository directory:

bash
Copy code
cd <repository-directory>
Update the variables.tf file to set the desired VPC CIDR block and subnet CIDR blocks.

Initialize Terraform:

csharp
Copy code
terraform init
Deploy the EKS cluster and VPC infrastructure:

Copy code
terraform apply
AWS Load Balancer Controller Installation
Run the install-aws-alb-controller.sh script to install the AWS Load Balancer Controller. Modify the CLUSTER_NAME and VPC_ID variables in the script to match your configuration.

bash
Copy code
chmod +x install-aws-alb-controller.sh
./install-aws-alb-controller.sh
Deploy 2048 Game Application
Use kubectl to apply the 2048-app.yaml file to deploy the 2048 game application:

yaml
Copy code
kubectl apply -f 2048-app.yaml
Accessing the 2048 Game
Once the deployment is complete, you can access the 2048 game through the ALB (Application Load Balancer). The ALB DNS name can be found in the AWS Management Console.

Cleaning Up
To clean up and delete the EKS cluster and associated resources, run:

Copy code
terraform destroy
