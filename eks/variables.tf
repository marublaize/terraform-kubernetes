variable "aws_region" {
  description = "AWS region"
}

variable "cluster_name" {
  description = "Name for the EKS cluster"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for subnets"
  type        = list(string)
}

variable "worker_node_group_name" {
  description = "Name for the EKS worker node group"
}

variable "worker_node_desired_size" {
  description = "Desired number of worker nodes"
  default     = 2
}

variable "worker_node_min_size" {
  description = "Minimum number of worker nodes"
  default     = 1
}

variable "worker_node_max_size" {
  description = "Maximum number of worker nodes"
  default     = 3
}

variable "worker_node_ssh_key" {
  description = "SSH key name for worker node instances"
}
