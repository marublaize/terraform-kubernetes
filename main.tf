provider "aws" {
  region = var.aws_region
}

module "eks_cluster" {
  source = "./modules/eks"          # Replace with the actual path to your EKS module

  # Pass variables required by the EKS module
  aws_region                    = var.aws_region
  cluster_name                  = var.cluster_name
  vpc_cidr_block                = var.vpc_cidr_block
  private_subnet_cidr_blocks    = var.private_subnet_cidr_blocks
  availability_zones            = var.availability_zones
  worker_node_group_name        = var.worker_node_group_name
  worker_node_desired_size      = var.worker_node_desired_size
  worker_node_min_size          = var.worker_node_min_size
  worker_node_max_size          = var.worker_node_max_size
  worker_node_ssh_key           = var.worker_node_ssh_key
}
