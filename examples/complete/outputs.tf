output "vpc" {
  value = module.My-VPC.vpc_id
}

output "public_subnet" {
  value = module.My-VPC.public_subnet
}

output "private_subnet" {
  value = module.My-VPC.private_subnet
}
