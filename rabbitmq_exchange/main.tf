terraform {
  required_version = "~>1.1.5"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.8.0"
    }
    helm       = {
      source  = "hashicorp/helm"
      version = "2.3.0"
    }
    rabbitmq   = {
      source  = "cyrilgdn/rabbitmq"
      version = "1.6.0"
    }
  }
}

provider "rabbitmq" {
  endpoint = "https://${var.host}"
  username = var.username
  password = var.password
}
