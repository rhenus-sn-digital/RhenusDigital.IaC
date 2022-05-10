resource "kubernetes_secret" "pull-secret" {

  metadata {
    name      = var.name
    namespace = var.namespace
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
}