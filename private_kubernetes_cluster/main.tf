locals {
  name = "aks-${var.organization}-${var.domain}-${var.application}${var.application == "" ? "" : "-"}${var.stage}"
}