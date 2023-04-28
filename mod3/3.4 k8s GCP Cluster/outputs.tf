output "region" {
  value       = var.region
  description = "GCP region"

}

output "project_id" {
  value       = var.project_id
  description = "GCP project ID"

}

output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE cluster name"

}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE cluster host"

}
