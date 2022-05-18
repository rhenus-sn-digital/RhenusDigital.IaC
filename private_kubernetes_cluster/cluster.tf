resource "azurerm_kubernetes_cluster" "private-kubernetes" {
  name                    = local.name
  dns_prefix              = local.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  node_resource_group     = var.node_resource_group_name
  kubernetes_version      = var.kubernetes_version
  private_cluster_enabled = true

  role_based_access_control {
    enabled = false
  }

  default_node_pool {
    name                = var.default_node_pool_name
    type                = var.default_node_pool_type
    vm_size             = var.default_node_pool_vm_size
    vnet_subnet_id      = var.subnet_id
    enable_auto_scaling = var.default_node_pool_enable_auto_scaling
    min_count           = var.default_node_pool_min_count
    max_count           = var.default_node_pool_max_count
  }

  network_profile {
    network_plugin     = "azure"
    load_balancer_sku  = "standard"
    docker_bridge_cidr = "172.17.0.1/16"
    dns_service_ip     = "10.0.0.10"
    service_cidr       = "10.0.0.0/16"
    outbound_type      = "userDefinedRouting"
  }

  service_principal {
    client_id     = var.service_principal_client_id
    client_secret = var.service_principal_client_secret
  }

  oms_agent {
    log_analytics_workspace_id = var.log_analytics_workspace_id
  }


  lifecycle {
    ignore_changes = [default_node_pool["node_count"]]
  }

  tags = var.tags
}