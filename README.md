# aws-eks-2048

# **EKS Cluster and 2048 Game Deployment**

This repository contains Terraform code for creating an Amazon Elastic Kubernetes Service (EKS) cluster in the AWS eu-west-2 region and deploying a 2048 game application on it. It also includes a script to install the AWS Load Balancer Controller for managing application load balancing.

## **Prerequisites**

Before you begin, ensure you have the following prerequisites:

1. AWS CLI: **[Install AWS CLI](https://aws.amazon.com/cli/)**
2. Terraform: **[Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)**
3. kubectl: **[Install kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)**
4. Helm: **[Install Helm](https://helm.sh/docs/intro/install/)**
5. Set up your AWS credentials using the AWS CLI:
    
    ```
    aws configure
    
    ```
    

## **Terraform Configuration**

1. Clone this repository to your local machine:
    
    ```bash
    git clone <repository-url>
    
    ```
    
2. Change into the repository directory:
    
    ```bash
    cd <repository-directory>
    
    ```
    
3. Update the **`variables.tf`** file to set the desired VPC CIDR block and subnet CIDR blocks.
4. Initialize Terraform:
    
    ```csharp
    terraform init
    
    ```
    
5. Deploy the EKS cluster and VPC infrastructure:
    
    ```
    terraform apply
    
    ```
    

## **AWS Load Balancer Controller Installation**

1. Run the **`install-aws-alb-controller.sh`** script to install the AWS Load Balancer Controller. Modify the **`CLUSTER_NAME`** and **`VPC_ID`** variables in the script to match your configuration.
    
    ```bash
    chmod +x install-aws-alb-controller.sh
    ./install-aws-alb-controller.sh
    
    ```
    

## **Deploy 2048 Game Application**

1. Use kubectl to apply the **`2048-app.yaml`** file to deploy the 2048 game application:
    
    ```yaml
    kubectl apply -f 2048-app.yaml
    
    ```
    

## **Accessing the 2048 Game**

Once the deployment is complete, you can access the 2048 game through the ALB (Application Load Balancer). The ALB DNS name can be found in the AWS Management Console.

## **Cleaning Up**

To clean up and delete the EKS cluster and associated resources, run:

```
terraform destroy

```