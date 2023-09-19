# Output the EKS cluster endpoint and security group
output "eks_cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_security_group_ids" {
  value = aws_eks_cluster.eks_cluster.vpc_config[0].security_group_ids
}
