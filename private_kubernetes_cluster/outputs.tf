output "id" {
  value = azurerm_kubernetes_cluster.private-kubernetes.id
}

output "host" {
  value = azurerm_kubernetes_cluster.private-kubernetes.kube_config[0].host
}

output "client_key" {
  value = azurerm_kubernetes_cluster.private-kubernetes.kube_config[0].client_key
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.private-kubernetes.kube_config[0].client_certificate
}

output "ca_certificate" {
  value = azurerm_kubernetes_cluster.private-kubernetes.kube_config[0].cluster_ca_certificatey
}
