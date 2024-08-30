# terraform-aws-vpc

# # Overview

This Terraform module creates an AWS VPC with a given CIDR block. It also creates multiple subnets (public and private), and for public subnets, it sets up an Internet Gateway (IGW) and appropriate route tables.

# # Features

- Create a VPC with a specified CIDR block
- Create public and private subnets
- Create an IGW for public subnets
- Sets up route tables for public subnets.

# # Usage

```
provider "aws" {
    region = "us-east-1"
}

module "My-VPC" {
  source = "./module/vpc"
  vpc_config = {
    cidr_block = "10.0.0.0/26"
    name = "your_VPC_name"
  }
  subnet_config = {
    #key={cidr,az}
    public_subnet = {
        cidr_block = "10.0.0.0/24"
        az = "us-east-1a"
        #to set the subnet as public, default is private
        public = true
        }
    private_subnet = {
        cidr_block = "10.0.1.0/24"
        az = "us-east-1b"
    }
    }
}
```
