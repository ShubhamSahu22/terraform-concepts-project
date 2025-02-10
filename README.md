# Build a Website Using Terraform

## Overview
This Terraform project provisions an AWS EC2 instance behind an Application Load Balancer (ALB), managed by an Auto Scaling Group (ASG). The ASG ensures that a minimum of 2 instances are always running, scaling up to 4 instances based on load.

## Features
- Uses **AWS Default VPC** (No need to create a custom VPC/Subnet).
- **Auto Scaling Group (ASG)** ensures high availability and scalability.
- **Application Load Balancer (ALB)** distributes traffic to instances.
- **Terraform Infrastructure as Code (IaC)** manages AWS resources declaratively.

---

## **Prerequisites**
Before deploying this project, ensure you have the following installed:

### **1. Install Terraform**
- Download Terraform from the official site: [Terraform Download](https://www.terraform.io/downloads)
- Install it by following the instructions for your OS.
- Verify installation by running:
  ```sh
  terraform -version
  ```

### **2. Configure AWS CLI**
- Install AWS CLI: [AWS CLI Installation](https://aws.amazon.com/cli/)
- Configure it with your AWS credentials:
  ```sh
  aws configure
  ```
  Provide your AWS **Access Key**, **Secret Key**, **Region**, and **Output Format**.

### **3. Set Up VS Code (Optional, but Recommended)**
- Install **VS Code**: [Download Here](https://code.visualstudio.com/)
- Install **Terraform Extension**: Search for `HashiCorp Terraform` in VS Code Extensions.

---

## **Project Structure**
```
terraform-aws-autoscaling-alb/
│── main.tf                # Main Terraform configuration file
│── variables.tf           # Variables for Terraform
│── outputs.tf             # Output values
│── README.md              # Documentation
```

---

## **Deployment Guide**

### **Step 1: Clone the Repository**
```sh
git clone https://github.com/yourusername/terraform-aws-autoscaling-alb.git
cd terraform-aws-autoscaling-alb
```

### **Step 2: Initialize Terraform**
```sh
terraform init
```
- Downloads necessary provider plugins.
- Sets up Terraform backend.

### **Step 3: Plan Deployment**
```sh
terraform plan
```
- Shows what Terraform will create before applying changes.

### **Step 4: Apply Configuration**
```sh
terraform apply -auto-approve
```
- Provisions AWS resources automatically.

### **Step 5: Access the Application**
- After deployment, Terraform outputs the ALB DNS name.
- Open a browser and navigate to:
  ```
  http://<ALB_DNS_NAME>
  ```

### **Step 6: Destroy Resources (Optional)**
If you want to delete all resources:
```sh
terraform destroy -auto-approve
```

---

## **Outputs**
Terraform will output the **ALB DNS Name**, which you can use to access the website:
```sh
alb_dns_name = "your-load-balancer-dns.amazonaws.com"
```

---

## **Resources Created by Terraform**
- **EC2 Instances** (Provisioned by ASG)
- **Application Load Balancer (ALB)**
- **Auto Scaling Group (ASG)**
- **Launch Template**
- **Target Group** (for routing traffic)
- **Security Groups** (for ALB and EC2 instances)

---

## **Terraform Concepts Covered in This Project**
1. **Declarative vs Procedural Infrastructure**
2. **State File (`terraform.tfstate`)**
3. **Terraform Init (`terraform init`)**
4. **Terraform Plan (`terraform plan`)**
5. **Terraform Apply (`terraform apply`)**
6. **Terraform Destroy (`terraform destroy`)**
7. **Terraform Output (`terraform output`)**
8. **Terraform Graph (`terraform graph`)**
9. **Terraform Lifecycle Settings**

This project is an excellent way to learn Terraform in a real-world AWS environment!

---

## **Next Steps**
- Enhance the project by adding HTTPS support with an ACM certificate.
- Use Terraform modules to separate networking and compute resources.
- Implement Terraform remote state management using AWS S3 and DynamoDB.

### **Author**
[Your Name]

**📌 GitHub:** [Your GitHub Profile](https://github.com/yourusername)

**📌 Medium Article:** [Your Medium Profile](https://medium.com/@yourusername) (Coming Soon!)

