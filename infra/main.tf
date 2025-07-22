resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "devopschallenge"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  depends_on = [azurerm_container_registry.acr]
}

resource "azurerm_postgresql_flexible_server" "psql" {
  name                   = var.postgres_server_name
  location               = azurerm_resource_group.main.location
  resource_group_name    = azurerm_resource_group.main.name
  administrator_login    = var.postgres_admin
  administrator_password = var.postgres_password
  version                = "13"
  storage_mb             = 32768
  sku_name               = "B1ms"
  authentication {
    active_directory_auth_enabled = false
    password_auth_enabled         = true
  }
}
