terraform {
  required_version = "~>1.1.5"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.8.0"
    }
  }
}

locals {
  name = var.domain
}