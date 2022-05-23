resource "rabbitmq_exchange" "exchange" {
  name       = var.domain
  
  settings {
    type        = "topic"
    durable     = true
    auto_delete = false
  }
}