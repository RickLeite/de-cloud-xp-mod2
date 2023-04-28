variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "igti-m3"
}

locals {
  cluster_name = "${var.project_name}-eks-cluster"
}
