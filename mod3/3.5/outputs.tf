output "cluster_id" {
  description = "The EKS cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_name" {
  description = "The EKS cluster name"
  value       = local.cluster_name
}

output "cluster_endpoint" {
  description = "The EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "region" {
  description = "The AWS region"
  value       = var.region
}
