variable "gke_num_nodes" {
  default     = 1
  description = "Number of nodes to create in the GKE cluster"
}

variable "project_id" {
  description = "The GCP project ID to deploy to"
  default     = "cogent-cocoa-376414"
}

variable "project_name" {
  default = "igti-terraform-k8s"

}

variable "region" {
  description = "GCP region"
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  default     = "us-central1-a"
}

variable "common_labels" {
  description = "Common labels to add to all resources"
  default = {
    Environment = "dev"
    Project     = "cogent-cocoa-376414"
  }

}
