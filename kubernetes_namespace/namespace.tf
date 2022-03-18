resource "kubernetes_namespace" "domain-namespace" {
  metadata {
    name = local.name
  }
}