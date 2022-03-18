resource "kubernetes_secret" "ps-acr-rhenus-digital" {

  metadata {
    name      = "ps-acr-rhenus-digital"
    namespace = kubernetes_namespace.domain-namespace.metadata[0].name
  }

  data = {
    ".dockerconfigjson" = <<DOCKER
{
  "auths": {
    "${var.acr_host}": {
      "auth": "${base64encode("${var.acr_user}:${var.acr_pass}")}"
    }
  }
}
DOCKER
  }

  type = "kubernetes.io/dockerconfigjson"

  depends_on = [kubernetes_namespace.domain-namespace]
}