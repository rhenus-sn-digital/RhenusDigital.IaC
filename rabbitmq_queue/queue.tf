resource "rabbitmq_queue" "queue" {
  name       = var.queuename
  settings {
    auto_delete = false
    durable     = true
  }
}

resource "rabbitmq_binding" "binding" {
  source           = var.exchange
  destination      = rabbitmq_queue.queue.name
  destination_type = "queue"
  vhost            = "/"

  routing_key = "${var.domain}.#"

  depends_on = [rabbitmq_queue.queue]
}