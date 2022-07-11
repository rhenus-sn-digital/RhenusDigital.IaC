locals {
  name = "rg-${var.domain}-${var.application}${var.application != "" ? "-": ""}${var.stage}"
}