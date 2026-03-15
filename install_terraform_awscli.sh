#!/bin/bash
set -e

# Install dependencies
echo "Terraform version:"
echo "AWS CLI version:"

# Install dependencies
sudo apt-get update
sudo apt-get install -y wget unzip curl


# Install Terraform
TERRAFORM_VERSION="1.7.5"
wget -O terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
unzip -o terraform.zip
sudo mv terraform /usr/local/bin/
sudo chmod +x /usr/local/bin/terraform
rm terraform.zip


# Install AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -o awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip aws

echo "Terraform version:"
terraform -version

echo "AWS CLI version:"
aws --version
